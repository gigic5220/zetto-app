part of 'history_provider.dart';

mixin HistoryActionMixin {
  void onPageFocused(WidgetRef ref) {
    ref.invalidate(_userCharacterDetailProvider);
  }
}
