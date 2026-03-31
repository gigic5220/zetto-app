import 'dart:io';

import 'package:args/args.dart';
import 'package:path/path.dart' as p;

const String version = '0.0.1';

ArgParser buildParser() {
  final ArgParser parser = ArgParser()
    ..addFlag('help', abbr: 'h', negatable: false, help: 'Print this usage information.')
    ..addFlag('verbose', abbr: 'v', negatable: false, help: 'Show additional command output.')
    ..addFlag('version', negatable: false, help: 'Print the tool version.');

  // add_controller subcommand
  final ArgParser addController = ArgParser()
    ..addOption('page', abbr: 'p', help: "Path to a file named like ~~_page.dart", valueHelp: 'path')
    ..addOption('dir', abbr: 'd', help: 'Directory to search for *_page.dart files', valueHelp: 'directory')
    ..addOption('name', abbr: 'n', help: "Base name for page (will target <name>_page.dart)", valueHelp: 'name')
    ..addFlag('latest', abbr: 'l', negatable: false, help: 'Use the most recently modified *_page.dart under dir (or CWD)')
    ..addFlag('non-interactive', negatable: false, help: 'Fail on ambiguity instead of prompting');

  parser.addCommand('add_controller', addController);
  // Short alias
  parser.addCommand('ac', addController);

  return parser;
}

void printUsage(ArgParser argParser) {
  print('Usage: dart run bin/develop_macro.dart <flags> <command> [arguments]');
  print('');
  print('Global options:');
  print(argParser.usage);
  print('');
  print('Commands:');
  print("  add_controller | ac");
  print("    -p, --page <path>          Create controller files next to given ~~_page.dart");
  print("    -d, --dir <directory>      Search root directory (default: CWD)");
  print("    -n, --name <name>          Base name; targets <dir>/<name>_page.dart");
  print("    -l, --latest               Use latest modified *_page.dart under <dir>");
  print("        --non-interactive      Fail on ambiguity instead of prompting");
  print('');
  print('Examples:');
  print('  dart run bin/develop_macro.dart add_controller -p apps/egrit/.../main_page.dart');
  print('  dart run bin/develop_macro.dart ac -d apps/egrit/lib/src -n problem_note_main');
  print('  dart run bin/develop_macro.dart ac -d apps/egrit/lib/src -l');
}

String? _pickFromCandidates(List<FileSystemEntity> candidates, {required bool nonInteractive}) {
  if (candidates.isEmpty) return null;
  if (candidates.length == 1 || nonInteractive) {
    return candidates.first.path;
  }
  // Interactive prompt
  stdout.writeln('Multiple *_page.dart files found. Select one:');
  for (int i = 0; i < candidates.length; i++) {
    stdout.writeln('  [${i + 1}] ${candidates[i].path}');
  }
  stdout.write('Enter number (1-${candidates.length}): ');
  final String? input = stdin.readLineSync();
  final int? idx = int.tryParse(input ?? '');
  if (idx == null || idx < 1 || idx > candidates.length) {
    stderr.writeln('Invalid selection.');
    return null;
  }
  return candidates[idx - 1].path;
}

String? resolvePagePath(ArgResults command, {required bool verbose}) {
  final String? pageOpt = command['page'] as String?;
  final String? dirOpt = command['dir'] as String?;
  final String? nameOpt = command['name'] as String?;
  final bool latestOpt = command['latest'] as bool? ?? false;
  final bool nonInteractive = command['non-interactive'] as bool? ?? false;

  // Case 1: Positional argument as page path
  if (command.rest.isNotEmpty) {
    return command.rest.first;
  }

  // Case 2: Explicit page option
  if (pageOpt != null && pageOpt.isNotEmpty) {
    return pageOpt;
  }

  // Determine search root
  final String searchRoot = (dirOpt != null && dirOpt.isNotEmpty) ? (p.isAbsolute(dirOpt) ? dirOpt : p.normalize(p.join(Directory.current.path, dirOpt))) : Directory.current.path;

  // Case 3: dir + name => direct construct path
  if (nameOpt != null && nameOpt.isNotEmpty) {
    final String candidate = p.join(searchRoot, '${nameOpt}_page.dart');
    return candidate;
  }

  // Case 4: latest flag => find latest *_page.dart under dir
  if (latestOpt) {
    final List<FileSystemEntity> candidates = Directory(searchRoot).listSync(recursive: true, followLinks: false).whereType<File>().where((f) => f.path.endsWith('_page.dart')).toList();
    candidates.sort((a, b) => b.statSync().modified.compareTo(a.statSync().modified));
    final String? picked = _pickFromCandidates(candidates, nonInteractive: true);
    return picked;
  }

  // Case 5: search under dir; if unique match, use it; else prompt/error
  final List<FileSystemEntity> candidates = Directory(searchRoot).listSync(recursive: true, followLinks: false).whereType<File>().where((f) => f.path.endsWith('_page.dart')).toList();

  if (candidates.isEmpty) {
    stderr.writeln("[ERROR] No *_page.dart found under: $searchRoot");
    return null;
  }
  if (candidates.length == 1) {
    return candidates.first.path;
  }

  if (nonInteractive) {
    stderr.writeln('[ERROR] Multiple candidates found under $searchRoot. Please narrow with -n or -p.');
    for (final f in candidates.take(20)) {
      stderr.writeln('  - ${f.path}');
    }
    if (candidates.length > 20) {
      stderr.writeln('  ... and ${candidates.length - 20} more');
    }
    return null;
  }

  return _pickFromCandidates(candidates, nonInteractive: false);
}

void runAddController(String pagePath, {required bool verbose}) {
  // Resolve to absolute, normalized path
  String resolvedPagePath = pagePath;
  if (!p.isAbsolute(resolvedPagePath)) {
    resolvedPagePath = p.normalize(p.join(Directory.current.path, resolvedPagePath));
  } else {
    resolvedPagePath = p.normalize(resolvedPagePath);
  }

  final String fileName = p.basename(resolvedPagePath);
  if (!fileName.endsWith('_page.dart')) {
    stderr.writeln("[ERROR] The file must end with '_page.dart': $fileName");
    exitCode = 64;
    return;
  }

  final String pageDir = p.dirname(resolvedPagePath);
  final String controllerDir = p.join(pageDir, 'controller');

  final String baseWithoutExt = p.basenameWithoutExtension(resolvedPagePath); // e.g. main_page
  final String namePrefix = baseWithoutExt.substring(0, baseWithoutExt.length - '_page'.length); // e.g. main

  final String providerFileName = '${namePrefix}_provider.dart';
  final String stateMixinFileName = '${namePrefix}_state_mixin.dart';
  final String actionMixinFileName = '${namePrefix}_action_mixin.dart';

  final File providerFile = File(p.join(controllerDir, providerFileName));
  final File stateMixinFile = File(p.join(controllerDir, stateMixinFileName));
  final File actionMixinFile = File(p.join(controllerDir, actionMixinFileName));

  // Create directory
  Directory(controllerDir).createSync(recursive: true);

  // Prepare contents
  final String providerContents =
      '${"""
part '$stateMixinFileName';
part '$actionMixinFileName';
""".trim()}\n';

  final String mixinPartOf =
      '${"""
part of '$providerFileName';
""".trim()}\n';

  // Write files if they do not exist
  if (!providerFile.existsSync()) {
    providerFile.writeAsStringSync(providerContents);
    if (verbose) stdout.writeln('[VERBOSE] Created: ${providerFile.path}');
  } else {
    stdout.writeln('[INFO] Skipped (exists): ${providerFile.path}');
  }

  if (!stateMixinFile.existsSync()) {
    stateMixinFile.writeAsStringSync(mixinPartOf);
    if (verbose) stdout.writeln('[VERBOSE] Created: ${stateMixinFile.path}');
  } else {
    stdout.writeln('[INFO] Skipped (exists): ${stateMixinFile.path}');
  }

  if (!actionMixinFile.existsSync()) {
    actionMixinFile.writeAsStringSync(mixinPartOf);
    if (verbose) stdout.writeln('[VERBOSE] Created: ${actionMixinFile.path}');
  } else {
    stdout.writeln('[INFO] Skipped (exists): ${actionMixinFile.path}');
  }

  stdout.writeln('Controller files are ready in: $controllerDir');
}

void main(List<String> arguments) {
  final ArgParser argParser = buildParser();
  try {
    final ArgResults results = argParser.parse(arguments);
    bool verbose = false;

    // Process the parsed arguments.
    if (results.flag('help')) {
      printUsage(argParser);
      return;
    }
    if (results.flag('version')) {
      print('develop_macro version: $version');
      return;
    }
    if (results.flag('verbose')) {
      verbose = true;
    }

    // If a subcommand was provided, handle it.
    final ArgResults? command = results.command;
    if (command == null) {
      // No command -> show usage
      printUsage(argParser);
      return;
    }

    switch (command.name) {
      case 'add_controller':
      case 'ac':
        final String? targetPage = resolvePagePath(command, verbose: verbose);
        if (targetPage == null) {
          exitCode = 64;
          return;
        }
        runAddController(targetPage, verbose: verbose);
        break;
      default:
        stderr.writeln('Unknown command: ${command.name}');
        print('');
        printUsage(argParser);
    }
  } on FormatException catch (e) {
    // Print usage information if an invalid argument was provided.
    print(e.message);
    print('');
    printUsage(argParser);
  }
}
