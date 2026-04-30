extension DateTimeRelativeKoExtension on DateTime {
  String relativePastLabelKo({DateTime? clock}) {
    final now = (clock ?? DateTime.now()).toLocal();
    final self = toLocal();
    if (!self.isBefore(now)) {
      return '0분 전';
    }
    final diff = now.difference(self);
    if (diff.inSeconds < 60) {
      return '0분 전';
    }
    if (diff.inMinutes < 60) {
      return '${diff.inMinutes}분 전';
    }
    return '${diff.inHours}시간 전';
  }
}
