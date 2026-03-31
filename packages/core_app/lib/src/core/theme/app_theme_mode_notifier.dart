import 'package:flutter/material.dart';

import '../../../core/storage/storage.dart';

enum AppThemeSetting { system, light, dark }

extension AppThemeSettingX on AppThemeSetting {
  ThemeMode get themeMode => switch (this) {
    AppThemeSetting.system => ThemeMode.system,
    AppThemeSetting.light => ThemeMode.light,
    AppThemeSetting.dark => ThemeMode.dark,
  };

  static AppThemeSetting fromStorage(String? value) {
    return AppThemeSetting.values.where((item) => item.name == value).firstOrNull ?? AppThemeSetting.system;
  }
}

extension _IterableFirstOrNullX<T> on Iterable<T> {
  T? get firstOrNull => isEmpty ? null : first;
}

class AppThemeModeNotifier extends ChangeNotifier {
  AppThemeModeNotifier._internal();

  factory AppThemeModeNotifier() => _instance;

  static final AppThemeModeNotifier _instance = AppThemeModeNotifier._internal();

  static const String _storageKey = 'app_theme_mode';

  final PreferenceStorage _storage = PreferenceStorage();

  AppThemeSetting _setting = AppThemeSetting.system;
  bool _loaded = false;

  AppThemeSetting get setting => _setting;
  ThemeMode get themeMode => _setting.themeMode;
  bool get loaded => _loaded;

  Future<void> load() async {
    final stored = await _storage.readString(_storageKey);
    _setting = AppThemeSettingX.fromStorage(stored);
    _loaded = true;
    notifyListeners();
  }

  Future<void> setSetting(AppThemeSetting setting) async {
    if (_setting == setting) {
      return;
    }

    _setting = setting;
    notifyListeners();
    await _storage.write(_storageKey, setting.name);
  }
}
