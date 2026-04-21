part of 'home_provider.dart';

mixin HomeActionMixin {
  void onTapFeedCharacter(
    BuildContext context, {
    required ImageSource source,
  }) async {
    final XFile? xFile = await ImagePicker().pickImage(source: source);
    if (xFile == null || !context.mounted) return;
    context.pushNamed(ReportPage.routeName, extra: xFile);
  }
}
