import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../../components/atoms.dart';
import '../../../components/ions.dart';
import '../../../components/molecules.dart';
import '../../../extenstion.dart';
import '../../../resources/resources.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSDatePickerType { day, slot }

enum DSDatePickerSelectionType { single, range, multiple }

class DSDatePicker extends StatefulWidget {
  DSDatePicker._({
    required this.initialType,
    this.selectionType,
    this.initialDateTimes,
    this.initialRangeStartDate,
    this.initialRangeEndDate,
    this.slotTypeTitle,
    DateTime? minDate,
    DateTime? maxDate,
    this.disabledDateTimeList,
    this.onTapSingleDate,
    this.onTapMultipleDate,
    this.onSetRange,
    this.onSlotChanged,
    this.maxDateTimeLength,
  }) : minDate = minDate ?? DateTime(1900, 1, 1),
       maxDate = maxDate ?? DateTime(2100, 12, 31);

  factory DSDatePicker.daySingle({
    DateTime? minDate,
    DateTime? maxDate,
    DateTime? initialDateTime,
    List<DateTime>? disabledDateTimeList,
    required Function({required DateTime dateTime}) onTapDate,
  }) => DSDatePicker._(
    initialType: DSDatePickerType.day,
    selectionType: DSDatePickerSelectionType.single,
    initialDateTimes: initialDateTime != null ? [initialDateTime] : null,
    minDate: minDate,
    maxDate: maxDate,
    disabledDateTimeList: disabledDateTimeList,
    onTapSingleDate: onTapDate,
  );

  factory DSDatePicker.dayMultiple({
    DateTime? minDate,
    DateTime? maxDate,
    List<DateTime>? initialDateTimes,
    List<DateTime>? disabledDateTimeList,
    required Function({required List<DateTime> dateTime}) onTapDate,
    required int maxDateTimeLength,
  }) => DSDatePicker._(
    initialType: DSDatePickerType.day,
    selectionType: DSDatePickerSelectionType.multiple,
    initialDateTimes: initialDateTimes,
    minDate: minDate,
    maxDate: maxDate,
    disabledDateTimeList: disabledDateTimeList,
    onTapMultipleDate: onTapDate,
    maxDateTimeLength: maxDateTimeLength,
  );

  factory DSDatePicker.dayRange({
    DateTime? minDate,
    DateTime? maxDate,
    DateTime? initialRangeStartDate,
    DateTime? initialRangeEndDate,
    List<DateTime>? disabledDateTimeList,
    required Function({required DateTime startDateTime, required DateTime endDateTime}) onSetRange,
    int? maxDateTimeLength,
  }) => DSDatePicker._(
    initialType: DSDatePickerType.day,
    selectionType: DSDatePickerSelectionType.range,
    initialRangeStartDate: initialRangeStartDate,
    initialRangeEndDate: initialRangeEndDate,
    minDate: minDate,
    maxDate: maxDate,
    disabledDateTimeList: disabledDateTimeList,
    onSetRange: onSetRange,
    maxDateTimeLength: maxDateTimeLength,
  );

  factory DSDatePicker.slot({
    String? slotTypeTitle,
    DateTime? minDate,
    DateTime? maxDate,
    DateTime? initialDateTime,
    List<DateTime>? disabledDateTimeList,
    required Function({required DateTime dateTime}) onSlotChanged,
  }) => DSDatePicker._(
    initialType: DSDatePickerType.slot,
    onSlotChanged: onSlotChanged,
    slotTypeTitle: slotTypeTitle,
    minDate: minDate,
    maxDate: maxDate,
    initialDateTimes: initialDateTime != null ? [initialDateTime] : null,
    disabledDateTimeList: disabledDateTimeList,
  );

  final DSDatePickerType initialType;
  final DSDatePickerSelectionType? selectionType;
  final List<DateTime>? initialDateTimes;
  final DateTime? initialRangeStartDate;
  final DateTime? initialRangeEndDate;
  final String? slotTypeTitle;
  final DateTime minDate;
  final DateTime maxDate;
  final List<DateTime>? disabledDateTimeList;
  final Function({required DateTime dateTime})? onTapSingleDate;
  final Function({required List<DateTime> dateTime})? onTapMultipleDate;
  final Function({required DateTime startDateTime, required DateTime endDateTime})? onSetRange;
  final Function({required DateTime dateTime})? onSlotChanged;
  final int? maxDateTimeLength;

  @override
  State<DSDatePicker> createState() => _DSDatePickerState();
}

class _DSDatePickerState extends State<DSDatePicker> {
  late DSDatePickerType currentPickerType;
  late DateTime currentYearMonth;
  late DateTime today;

  // day type
  final List<String> calendarDays = ['일', '월', '화', '수', '목', '금', '토'];
  late List<DateTime> calendarDates;

  // slot type
  PageController? slotYearPageController;
  PageController? slotMonthPageController;
  late int slotSelectedYearPageIndex;
  late int slotSelectedMonthPageIndex;

  // common
  late List<DateTime> sortedDisabledDateTimes;
  late final Listenable selectionListenable;
  late final ValueNotifier<List<DateTime>?> selectedDateTimesNotifier;
  late final ValueNotifier<DateTime?> rangeStartDateTimeNotifier;
  late final ValueNotifier<DateTime?> rangeEndDateTimeNotifier;

  // colors
  late PickerSlotTextColors pickerSlotTextColors;
  late PickerSlotFillColors pickerSlotFillColors;
  late PickerCalendarTextColors pickerCalendarTextColors;
  late PickerCalendarFillColors pickerCalendarFillColors;
  late PickerCalendarBorderColors pickerCalendarBorderColors;

  late Color slotSelectedTextColor;
  late Color slotUnselectedTextColor;
  late Color slotDisabledTextColor;
  late Color slotSelectedBackgroundColor;

  late Color calendarDayTextColor;
  late Color calendarSelectedDateTextColor;
  late Color calendarCurrentMonthDateTextColor;
  late Color calendarOtherMonthDateTextColor;
  late Color calendarDisabledDateTextColor;
  late Color calendarTodayDateBorderColor;
  late Color calendarSelectedBackgroundColor;
  late Color calendarRangeBackgroundColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSDatePicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    _calculate();

    bool shouldUpdateCalendar = false;
    bool shouldUpdateSlotIndex = false;

    DateTime? nextCurrentDateTime;

    final minDate = widget.minDate;
    final maxDate = widget.maxDate;

    bool isInMinMaxRange(DateTime dateTime) {
      final normalized = DateTime(dateTime.year, dateTime.month, dateTime.day);
      final min = DateTime(minDate.year, minDate.month, minDate.day);
      final max = DateTime(maxDate.year, maxDate.month, maxDate.day);

      return !normalized.isBefore(min) && !normalized.isAfter(max);
    }

    DateTime convertToInMinMaxRangeDate(DateTime dateTime) {
      final normalized = DateTime(dateTime.year, dateTime.month, dateTime.day);
      final min = DateTime(minDate.year, minDate.month, minDate.day);
      final max = DateTime(maxDate.year, maxDate.month, maxDate.day);

      if (normalized.isBefore(min)) return min;
      if (normalized.isAfter(max)) return max;
      return normalized;
    }

    bool isSameDateList({required List<DateTime> dateTimes1, required List<DateTime> dateTimes2}) {
      if (dateTimes1.length != dateTimes2.length) return false;

      for (int i = 0; i < dateTimes1.length; i++) {
        if (!_isSameDate(dateTime1: dateTimes1[i], dateTime2: dateTimes2[i])) return false;
      }

      return true;
    }

    final bool didInitialDateTimesChange = !isSameDateList(
      dateTimes1: oldWidget.initialDateTimes ?? [],
      dateTimes2: widget.initialDateTimes ?? [],
    );

    final bool didDisabledDateListChange = !isSameDateList(
      dateTimes1: oldWidget.disabledDateTimeList ?? [],
      dateTimes2: widget.disabledDateTimeList ?? [],
    );

    final didRangeStartChange = !_isSameDate(
      dateTime1: oldWidget.initialRangeStartDate,
      dateTime2: widget.initialRangeStartDate,
    );

    final didRangeEndChange = !_isSameDate(
      dateTime1: oldWidget.initialRangeEndDate,
      dateTime2: widget.initialRangeEndDate,
    );

    final didMinDateChange = !_isSameDate(dateTime1: oldWidget.minDate, dateTime2: widget.minDate);

    final didMaxDateChange = !_isSameDate(dateTime1: oldWidget.maxDate, dateTime2: widget.maxDate);

    if (didInitialDateTimesChange) {
      selectedDateTimesNotifier.value = widget.initialDateTimes;
    }

    if (didDisabledDateListChange) {
      _setDisabledDateTimes();
    }

    if (didRangeStartChange) {
      rangeStartDateTimeNotifier.value = widget.initialRangeStartDate;
    }

    if (didRangeEndChange) {
      rangeEndDateTimeNotifier.value = widget.initialRangeEndDate;
    }

    if (didMinDateChange || didMaxDateChange) {
      final selectedDates = selectedDateTimesNotifier.value;
      if (selectedDates != null && selectedDates.any((date) => !isInMinMaxRange(date))) {
        selectedDateTimesNotifier.value = null;
      }

      final rangeStart = rangeStartDateTimeNotifier.value;
      final rangeEnd = rangeEndDateTimeNotifier.value;

      final isRangeStartValid = rangeStart == null || isInMinMaxRange(rangeStart);
      final isRangeEndValid = rangeEnd == null || isInMinMaxRange(rangeEnd);

      if (!isRangeStartValid || !isRangeEndValid) {
        rangeStartDateTimeNotifier.value = null;
        rangeEndDateTimeNotifier.value = null;
      }

      final inMinMaxRangeDate = convertToInMinMaxRangeDate(currentYearMonth);

      if (!_isSameYearAndMonth(dateTime1: currentYearMonth, dateTime2: inMinMaxRangeDate)) {
        nextCurrentDateTime = _toMonthStartDateTime(inMinMaxRangeDate);
        shouldUpdateCalendar = true;
      }

      shouldUpdateSlotIndex = true;
    }

    DateTime? tempCurrentDateTime;

    switch (widget.selectionType) {
      case DSDatePickerSelectionType.single || DSDatePickerSelectionType.multiple:
        tempCurrentDateTime = selectedDateTimesNotifier.value?.first;
        break;

      case DSDatePickerSelectionType.range:
        tempCurrentDateTime = rangeStartDateTimeNotifier.value ?? rangeEndDateTimeNotifier.value;
        break;

      case null:
        tempCurrentDateTime = selectedDateTimesNotifier.value?.first;
        break;
    }

    if (tempCurrentDateTime != null) {
      final inMinMaxRangeDate = convertToInMinMaxRangeDate(tempCurrentDateTime);

      if (!_isSameYearAndMonth(dateTime1: currentYearMonth, dateTime2: inMinMaxRangeDate)) {
        nextCurrentDateTime = _toMonthStartDateTime(inMinMaxRangeDate);
        shouldUpdateCalendar = true;
        shouldUpdateSlotIndex = true;
      }
    }

    if (shouldUpdateCalendar && nextCurrentDateTime != null) {
      setState(() {
        currentYearMonth = nextCurrentDateTime!;
        if (currentPickerType == DSDatePickerType.day) {
          _setDateList();
        }
      });
    }

    if (shouldUpdateSlotIndex && currentPickerType == DSDatePickerType.slot) {
      _setSlotIndex(baseDateTime: nextCurrentDateTime ?? currentYearMonth);
    }
  }

  void _calculate() {
    pickerSlotTextColors = context.componentColors.pickerSlotText;
    pickerSlotFillColors = context.componentColors.pickerSlotFill;
    pickerCalendarTextColors = context.componentColors.pickerCalendarText;
    pickerCalendarFillColors = context.componentColors.pickerCalendarFill;
    pickerCalendarBorderColors = context.componentColors.pickerCalendarBorder;

    slotSelectedTextColor = pickerSlotTextColors.primary;
    slotUnselectedTextColor = pickerSlotTextColors.secondary;
    slotDisabledTextColor = pickerSlotTextColors.disabled;
    slotSelectedBackgroundColor = pickerSlotFillColors.selected;

    calendarDayTextColor = pickerCalendarTextColors.secondary;
    calendarSelectedDateTextColor = pickerCalendarTextColors.inverse;
    calendarCurrentMonthDateTextColor = pickerCalendarTextColors.primary;
    calendarOtherMonthDateTextColor = pickerCalendarTextColors.secondary;
    calendarDisabledDateTextColor = pickerCalendarTextColors.disabled;
    calendarTodayDateBorderColor = pickerCalendarBorderColors.base;
    calendarSelectedBackgroundColor = pickerCalendarFillColors.selected;
    calendarRangeBackgroundColor = pickerCalendarFillColors.range;
  }

  @override
  void initState() {
    super.initState();
    today = DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    currentPickerType = widget.initialType;
    currentYearMonth = widget.initialDateTimes?.first ?? widget.initialRangeStartDate ?? today;
    _setDisabledDateTimes();
    final initialYearIndex = (currentYearMonth.year - widget.minDate.year).clamp(
      0,
      widget.maxDate.year - widget.minDate.year,
    );
    final initialYear = widget.minDate.year + initialYearIndex;
    final initialStartMonth = _displayStartMonthForYear(initialYear);
    final initialEndMonth = _displayEndMonthForYear(initialYear);
    final initialMonth = currentYearMonth.month.clamp(initialStartMonth, initialEndMonth);

    slotSelectedYearPageIndex = initialYearIndex;
    slotSelectedMonthPageIndex = initialMonth - initialStartMonth;

    slotYearPageController = PageController(initialPage: slotSelectedYearPageIndex, viewportFraction: 1 / 6);
    slotMonthPageController = PageController(initialPage: slotSelectedMonthPageIndex, viewportFraction: 1 / 6);

    if (widget.initialType == DSDatePickerType.day) {
      _setDateList();
    }

    selectedDateTimesNotifier = ValueNotifier<List<DateTime>?>(widget.initialDateTimes);
    rangeStartDateTimeNotifier = ValueNotifier<DateTime?>(widget.initialRangeStartDate);
    rangeEndDateTimeNotifier = ValueNotifier<DateTime?>(widget.initialRangeEndDate);
    selectionListenable = Listenable.merge([
      selectedDateTimesNotifier,
      rangeStartDateTimeNotifier,
      rangeEndDateTimeNotifier,
    ]);
  }

  @override
  void dispose() {
    slotYearPageController?.dispose();
    slotMonthPageController?.dispose();
    selectedDateTimesNotifier.dispose();
    rangeStartDateTimeNotifier.dispose();
    rangeEndDateTimeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return switch (currentPickerType) {
      .day => _buildDayTypeWidget(),
      .slot => _buildSlotTypeWidget(),
    };
  }

  Widget _buildDayTypeWidget() {
    return Column(
      children: [
        DSListTitle.smallValue(
          title: DateFormat('yyyy년 M월', 'ko').format(currentYearMonth),
          wrapper: DSWrapper(uri: Svgs.icChevronDown, view: WrapperView.fix12),
          onTapLeading: _onTapToggleType,
          trailingWidget: Row(
            spacing: context.componentGap.xLarge,
            children: [
              DSIconSolidButton.xSmall(iconUri: Svgs.icChevronLeft, variant: .tertiary, onTap: _onTapPrevMonth),
              DSIconSolidButton.xSmall(iconUri: Svgs.icChevronRight, variant: .tertiary, onTap: _onTapNextMonth),
            ],
          ),
        ),
        Column(
          children: [
            Row(
              children: calendarDays
                  .map(
                    (day) => Expanded(
                      child: Container(
                        padding: .symmetric(vertical: context.componentPadding.xSmall),
                        height: 30,
                        child: Center(
                          child: Text(day, style: context.textTheme.labelMMedium.copyWith(color: calendarDayTextColor)),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: calendarDates.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 7,
                mainAxisSpacing: 0,
                crossAxisSpacing: 0,
                mainAxisExtent: 50,
              ),
              itemBuilder: (context, index) {
                final dateTime = calendarDates[index];
                return _CalendarDateCell(
                  key: ValueKey('${dateTime.year}-${dateTime.month}-${dateTime.day}'),
                  dateTime: dateTime,
                  currentDateTime: currentYearMonth,
                  selectionType: widget.selectionType,
                  today: today,
                  selectedDateTimesNotifier: selectedDateTimesNotifier,
                  rangeStartDateTimeNotifier: rangeStartDateTimeNotifier,
                  rangeEndDateTimeNotifier: rangeEndDateTimeNotifier,
                  calendarSelectedDateTextColor: calendarSelectedDateTextColor,
                  calendarCurrentMonthDateTextColor: calendarCurrentMonthDateTextColor,
                  calendarOtherMonthDateTextColor: calendarOtherMonthDateTextColor,
                  calendarDisabledDateTextColor: calendarDisabledDateTextColor,
                  calendarTodayDateBorderColor: calendarTodayDateBorderColor,
                  calendarSelectedBackgroundColor: calendarSelectedBackgroundColor,
                  calendarRangeBackgroundColor: calendarRangeBackgroundColor,
                  onTap: () => _onTapDate(dateTime: dateTime),
                  selectionListenable: selectionListenable,
                  isEnabled: !_isDisabled(dateTime: dateTime),
                );
              },
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSlotTypeWidget() {
    return Column(
      children: [
        switch (widget.initialType) {
          .day => DSListTitle.smallValue(
            title: DateFormat('yyyy년 M월', 'ko').format(currentYearMonth),
            wrapper: DSWrapper(uri: Svgs.icChevronUp, view: WrapperView.fix12),
            onTapLeading: _onTapToggleType,
            trailingWidget: DSSolidButton.xSmall(variant: .primary, text: '선택', onTap: _onTapSelectSlotDate),
          ),
          .slot =>
            widget.slotTypeTitle?.isNotEmpty == true
                ? DSListTitle.smallValue(title: widget.slotTypeTitle!)
                : const SizedBox.shrink(),
        },
        SizedBox(
          height: 330,
          child: Row(
            spacing: context.componentGap.small,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: slotYearPageController,
                  scrollDirection: Axis.vertical,
                  itemCount: widget.maxDate.year - widget.minDate.year + 1,
                  onPageChanged: (index) {
                    HapticFeedback.lightImpact();

                    final selectedYear = widget.minDate.year + index;
                    final startMonth = _displayStartMonthForYear(selectedYear);
                    final endMonth = _displayEndMonthForYear(selectedYear);

                    final currentActualMonth = _actualMonthFromPageIndex(
                      year: widget.minDate.year + slotSelectedYearPageIndex,
                      pageIndex: slotSelectedMonthPageIndex,
                    );

                    final nextActualMonth = currentActualMonth.clamp(startMonth, endMonth);
                    final nextMonthIndex = nextActualMonth - startMonth;

                    setState(() {
                      slotSelectedYearPageIndex = index;
                      slotSelectedMonthPageIndex = nextMonthIndex;
                    });

                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      slotMonthPageController?.jumpToPage(slotSelectedMonthPageIndex);
                    });

                    widget.onSlotChanged?.call(dateTime: DateTime(selectedYear, nextActualMonth, 1));
                  },
                  itemBuilder: (context, index) {
                    final bool isSelected = index == slotSelectedYearPageIndex;

                    final currentYear = widget.minDate.year + index;

                    final bool isDisabled =
                        widget.initialType == .slot &&
                        sortedDisabledDateTimes.isNotEmpty &&
                        sortedDisabledDateTimes
                                .where((disabledDateTime) => disabledDateTime.year == currentYear)
                                .length ==
                            _monthItemCountForYear(currentYear);

                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _animateSlotChange(slotYearPageController, index),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isSelected ? slotSelectedBackgroundColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(context.componentRadius.medium),
                        ),
                        child: AnimatedDefaultTextStyle(
                          duration: const Duration(milliseconds: 200),
                          style: context.textTheme.bodyXLMedium.copyWith(
                            color: switch (isDisabled) {
                              true => slotDisabledTextColor,
                              false => isSelected ? slotSelectedTextColor : slotUnselectedTextColor,
                            },
                            height: 1.2,
                          ),
                          child: Center(child: Text('$currentYear')),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (context) {
                    final selectedYear = widget.minDate.year + slotSelectedYearPageIndex;
                    final monthItemCount = _monthItemCountForYear(selectedYear);

                    return PageView.builder(
                      controller: slotMonthPageController,
                      scrollDirection: Axis.vertical,
                      itemCount: monthItemCount,
                      onPageChanged: (index) {
                        HapticFeedback.lightImpact();

                        setState(() {
                          slotSelectedMonthPageIndex = index;
                        });

                        final actualMonth = _actualMonthFromPageIndex(year: selectedYear, pageIndex: index);

                        widget.onSlotChanged?.call(dateTime: DateTime(selectedYear, actualMonth, 1));
                      },
                      itemBuilder: (context, index) {
                        final bool isSelected = index == slotSelectedMonthPageIndex;

                        final currentYearSlot = widget.minDate.year + slotSelectedYearPageIndex;

                        final actualMonth = _actualMonthFromPageIndex(year: selectedYear, pageIndex: index);

                        final currentSlotDateTime = DateTime(currentYearSlot, actualMonth, 1);

                        final bool isDisabled =
                            widget.initialType == .slot &&
                            sortedDisabledDateTimes.isNotEmpty &&
                            sortedDisabledDateTimes.any(
                              (disabledDateTime) =>
                                  _isSameDate(dateTime1: currentSlotDateTime, dateTime2: disabledDateTime),
                            );

                        return GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () => _animateSlotChange(slotMonthPageController, index),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: isSelected ? slotSelectedBackgroundColor : Colors.transparent,
                              borderRadius: BorderRadius.circular(context.componentRadius.medium),
                            ),
                            child: AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 200),
                              style: context.textTheme.bodyXLMedium.copyWith(
                                color: switch (isDisabled) {
                                  true => slotDisabledTextColor,
                                  false => isSelected ? slotSelectedTextColor : slotUnselectedTextColor,
                                },
                                height: 1.2,
                              ),
                              child: Center(child: Text('$actualMonth월')),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _setDateList() {
    calendarDates = _buildCalendarDateGridForMonth(
      dateTime: DateTime(currentYearMonth.year, currentYearMonth.month, 1),
    );
  }

  void _setDisabledDateTimes() {
    sortedDisabledDateTimes =
        (widget.disabledDateTimeList ?? [])
            .map(
              (disabledDateTime) => widget.initialType == DSDatePickerType.slot
                  ? _toMonthStartDateTime(disabledDateTime)
                  : disabledDateTime,
            )
            .toSet()
            .toList()
          ..sort((a, b) => a.compareTo(b));
  }

  List<DateTime> _buildCalendarDateGridForMonth({required DateTime dateTime}) {
    final y = dateTime.year;
    final m = dateTime.month;

    final firstOfMonth = DateTime(y, m, 1);

    final leadingCount = firstOfMonth.weekday % DateTime.daysPerWeek;

    final result = <DateTime>[];

    if (leadingCount > 0) {
      final lastOfPrev = DateTime(y, m, 0);
      final py = lastOfPrev.year;
      final pm = lastOfPrev.month;
      final lastDayPrev = lastOfPrev.day;
      final startDay = lastDayPrev - leadingCount + 1;
      for (var d = startDay; d <= lastDayPrev; d++) {
        result.add(DateTime(py, pm, d));
      }
    }

    final daysInMonth = DateTime(y, m + 1, 0).day;
    for (var d = 1; d <= daysInMonth; d++) {
      result.add(DateTime(y, m, d));
    }

    var cursor = DateTime(y, m, daysInMonth).add(const Duration(days: 1));

    var trailing = (DateTime.daysPerWeek - (result.length % DateTime.daysPerWeek)) % DateTime.daysPerWeek;
    for (var i = 0; i < trailing; i++) {
      result.add(cursor);
      cursor = cursor.add(const Duration(days: 1));
    }

    while (result.length < DateTime.daysPerWeek * 6) {
      result.add(cursor);
      cursor = cursor.add(const Duration(days: 1));
    }

    return result;
  }

  void _setSlotIndex({DateTime? baseDateTime}) {
    final base = baseDateTime ?? currentYearMonth;

    final maxYearIndex = widget.maxDate.year - widget.minDate.year;
    final nextYearIndex = (base.year - widget.minDate.year).clamp(0, maxYearIndex);

    final actualYear = widget.minDate.year + nextYearIndex;
    final startMonth = _displayStartMonthForYear(actualYear);
    final endMonth = _displayEndMonthForYear(actualYear);
    final clampedMonth = base.month.clamp(startMonth, endMonth);
    final nextMonthIndex = clampedMonth - startMonth;

    setState(() {
      slotSelectedYearPageIndex = nextYearIndex;
      slotSelectedMonthPageIndex = nextMonthIndex;

      WidgetsBinding.instance.addPostFrameCallback((_) {
        slotYearPageController?.jumpToPage(slotSelectedYearPageIndex);
        slotMonthPageController?.jumpToPage(slotSelectedMonthPageIndex);
      });
    });
  }

  void _animateSlotChange(PageController? controller, int index) {
    void run() {
      final c = controller;
      if (c == null || !c.hasClients) return;
      c.animateToPage(index, duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
    }

    if (controller?.hasClients == true) {
      run();
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) => run());
    }
  }

  void _onTapSelectSlotDate() {
    final selectedYear = widget.minDate.year + slotSelectedYearPageIndex;
    final selectedMonth = _actualMonthFromPageIndex(year: selectedYear, pageIndex: slotSelectedMonthPageIndex);

    setState(() {
      currentYearMonth = DateTime(selectedYear, selectedMonth, 1);
    });

    _onTapToggleType();
  }

  void _onTapPrevMonth() {
    final prevMonth = currentYearMonth.month == 1
        ? DateTime(currentYearMonth.year - 1, 12, 1)
        : DateTime(currentYearMonth.year, currentYearMonth.month - 1, 1);

    final minMonth = DateTime(widget.minDate.year, widget.minDate.month, 1);
    if (prevMonth.isBefore(minMonth)) return;

    setState(() {
      currentYearMonth = prevMonth;
      _setDateList();
    });
  }

  void _onTapNextMonth() {
    final nextMonth = currentYearMonth.month == 12
        ? DateTime(currentYearMonth.year + 1, 1, 1)
        : DateTime(currentYearMonth.year, currentYearMonth.month + 1, 1);

    final maxMonth = DateTime(widget.maxDate.year, widget.maxDate.month, 1);
    if (nextMonth.isAfter(maxMonth)) return;

    setState(() {
      currentYearMonth = nextMonth;
      _setDateList();
    });
  }

  void _onTapToggleType() {
    if (widget.initialType == .slot) return;

    if (currentPickerType == .slot) {
      _setDateList();
    } else if (currentPickerType == .day) {
      _setSlotIndex();
    }

    setState(() {
      currentPickerType = currentPickerType == .day ? .slot : .day;
    });
  }

  void _onTapDate({required DateTime dateTime}) {
    if (_isDisabled(dateTime: dateTime)) return;

    switch (widget.selectionType) {
      case DSDatePickerSelectionType.single:
        if (_isSameDate(dateTime1: selectedDateTimesNotifier.value?.first, dateTime2: dateTime)) {
          return;
        }

        selectedDateTimesNotifier.value = [dateTime];

        if (!_isSameYearAndMonth(dateTime1: currentYearMonth, dateTime2: dateTime)) {
          setState(() {
            currentYearMonth = DateTime(dateTime.year, dateTime.month, 1);
            _setDateList();
          });
        }

        widget.onTapSingleDate?.call(dateTime: dateTime);
        break;

      case DSDatePickerSelectionType.multiple:
        final bool isAlreadySelected =
            selectedDateTimesNotifier.value?.any((item) => _isSameDate(dateTime1: item, dateTime2: dateTime)) ?? false;

        final newSelectedDateTimes = List<DateTime>.from(selectedDateTimesNotifier.value ?? []);

        if (isAlreadySelected) {
          newSelectedDateTimes.removeWhere((item) => _isSameDate(dateTime1: item, dateTime2: dateTime));
          selectedDateTimesNotifier.value = newSelectedDateTimes;
          widget.onTapMultipleDate?.call(dateTime: newSelectedDateTimes);
          return;
        }

        if (selectedDateTimesNotifier.value?.length != null &&
            widget.maxDateTimeLength != null &&
            selectedDateTimesNotifier.value!.length >= widget.maxDateTimeLength!) {
          return;
        }

        newSelectedDateTimes.add(dateTime);
        newSelectedDateTimes.sort((a, b) => a.compareTo(b));
        selectedDateTimesNotifier.value = newSelectedDateTimes;

        if (!_isSameYearAndMonth(dateTime1: currentYearMonth, dateTime2: dateTime)) {
          setState(() {
            currentYearMonth = DateTime(dateTime.year, dateTime.month, 1);
            _setDateList();
          });
        }

        widget.onTapMultipleDate?.call(dateTime: newSelectedDateTimes);
        break;

      case DSDatePickerSelectionType.range:
        final currentStart = rangeStartDateTimeNotifier.value;
        final currentEnd = rangeEndDateTimeNotifier.value;

        if (currentStart == null) {
          rangeStartDateTimeNotifier.value = dateTime;
          rangeEndDateTimeNotifier.value = null;
        } else {
          if (currentEnd == null) {
            if (dateTime.isAfter(currentStart)) {
              DateTime? maxDateTime;

              if (widget.maxDateTimeLength != null) {
                if (sortedDisabledDateTimes.isNotEmpty) {
                  DateTime tempMaxDateTime = currentStart.add(Duration(days: widget.maxDateTimeLength! - 1));

                  int tempMaxDateTimeDisabledIndex = sortedDisabledDateTimes.indexWhere(
                    (disabledDateTime) => _isSameDate(dateTime1: tempMaxDateTime, dateTime2: disabledDateTime),
                  );

                  if (tempMaxDateTimeDisabledIndex == -1) {
                    maxDateTime = tempMaxDateTime;
                  } else {
                    for (int i = tempMaxDateTimeDisabledIndex; i >= 0; i--) {
                      final disabledDateTime = sortedDisabledDateTimes[i];
                      if (_isSameDate(dateTime1: tempMaxDateTime, dateTime2: disabledDateTime)) {
                        tempMaxDateTime = tempMaxDateTime.subtract(const Duration(days: 1));
                      } else {
                        maxDateTime = tempMaxDateTime;
                        break;
                      }
                    }
                    maxDateTime ??= tempMaxDateTime;
                  }
                } else {
                  maxDateTime = currentStart.add(Duration(days: widget.maxDateTimeLength! - 1));
                }
              }

              if (maxDateTime != null && dateTime.isAfter(maxDateTime)) {
                rangeEndDateTimeNotifier.value = maxDateTime;
              } else {
                rangeEndDateTimeNotifier.value = dateTime;
              }
            } else if (dateTime.isBefore(currentStart)) {
              rangeStartDateTimeNotifier.value = dateTime;
              rangeEndDateTimeNotifier.value = null;
            }
          } else {
            rangeStartDateTimeNotifier.value = dateTime;
            rangeEndDateTimeNotifier.value = null;
          }
        }

        final targetDateTime = rangeEndDateTimeNotifier.value ?? dateTime;

        if (!_isSameYearAndMonth(dateTime1: currentYearMonth, dateTime2: targetDateTime)) {
          setState(() {
            currentYearMonth = DateTime(targetDateTime.year, targetDateTime.month, 1);
            _setDateList();
          });
        }

        if (rangeStartDateTimeNotifier.value != null && rangeEndDateTimeNotifier.value != null) {
          widget.onSetRange?.call(
            startDateTime: rangeStartDateTimeNotifier.value!,
            endDateTime: rangeEndDateTimeNotifier.value!,
          );
        }

        break;

      case null:
        break;
    }
  }

  bool _isSameDate({required DateTime? dateTime1, required DateTime? dateTime2}) {
    return dateTime1?.year == dateTime2?.year &&
        dateTime1?.month == dateTime2?.month &&
        dateTime1?.day == dateTime2?.day;
  }

  bool _isSameYearAndMonth({required DateTime dateTime1, required DateTime dateTime2}) {
    return dateTime1.year == dateTime2.year && dateTime1.month == dateTime2.month;
  }

  bool _isDisabled({required DateTime dateTime}) {
    final target = DateTime(dateTime.year, dateTime.month, dateTime.day);
    final min = DateTime(widget.minDate.year, widget.minDate.month, widget.minDate.day);
    final max = DateTime(widget.maxDate.year, widget.maxDate.month, widget.maxDate.day);

    if (target.isBefore(min) || target.isAfter(max)) return true;

    return sortedDisabledDateTimes.any((d) {
      return d.year == target.year && d.month == target.month && d.day == target.day;
    });
  }

  int _displayStartMonthForYear(int year) {
    return year == widget.minDate.year ? widget.minDate.month : 1;
  }

  int _displayEndMonthForYear(int year) {
    return year == widget.maxDate.year ? widget.maxDate.month : 12;
  }

  int _monthItemCountForYear(int year) {
    return _displayEndMonthForYear(year) - _displayStartMonthForYear(year) + 1;
  }

  int _actualMonthFromPageIndex({required int year, required int pageIndex}) {
    return _displayStartMonthForYear(year) + pageIndex;
  }

  DateTime _toMonthStartDateTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, 1);
  }
}

class _CalendarDateCell extends StatelessWidget {
  const _CalendarDateCell({
    super.key,
    required this.dateTime,
    required this.currentDateTime,
    required this.selectionType,
    required this.today,
    required this.selectedDateTimesNotifier,
    required this.rangeStartDateTimeNotifier,
    required this.rangeEndDateTimeNotifier,
    required this.calendarSelectedDateTextColor,
    required this.calendarCurrentMonthDateTextColor,
    required this.calendarOtherMonthDateTextColor,
    required this.calendarDisabledDateTextColor,
    required this.calendarTodayDateBorderColor,
    required this.calendarSelectedBackgroundColor,
    required this.calendarRangeBackgroundColor,
    required this.onTap,
    required this.selectionListenable,
    this.isEnabled = true,
  });

  final DateTime dateTime;
  final DateTime currentDateTime;
  final DSDatePickerSelectionType? selectionType;
  final DateTime today;

  final ValueNotifier<List<DateTime>?> selectedDateTimesNotifier;
  final ValueNotifier<DateTime?> rangeStartDateTimeNotifier;
  final ValueNotifier<DateTime?> rangeEndDateTimeNotifier;

  final Color calendarSelectedDateTextColor;
  final Color calendarCurrentMonthDateTextColor;
  final Color calendarOtherMonthDateTextColor;
  final Color calendarDisabledDateTextColor;
  final Color calendarTodayDateBorderColor;
  final Color calendarSelectedBackgroundColor;
  final Color calendarRangeBackgroundColor;

  final VoidCallback onTap;
  final Listenable selectionListenable;
  final bool isEnabled;

  bool _isSameDate(DateTime? a, DateTime? b) {
    if (a == null || b == null) return false;
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  bool _isSameMonth(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month;
  }

  bool _isDateTimeInRange({
    required DateTime dateTime,
    required DateTime? rangeStartDateTime,
    required DateTime? rangeEndDateTime,
  }) {
    if (rangeStartDateTime == null || rangeEndDateTime == null) return false;

    return _isSameDate(dateTime, rangeStartDateTime) ||
        _isSameDate(dateTime, rangeEndDateTime) ||
        (dateTime.isAfter(rangeStartDateTime) && dateTime.isBefore(rangeEndDateTime));
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: selectionListenable,
      builder: (context, _) {
        final selectedDateTimes = selectedDateTimesNotifier.value;
        final rangeStartDateTime = rangeStartDateTimeNotifier.value;
        final rangeEndDateTime = rangeEndDateTimeNotifier.value;

        final bool isRangeStartDate = _isSameDate(dateTime, rangeStartDateTime);
        final bool isRangeEndDate = _isSameDate(dateTime, rangeEndDateTime);
        final bool isSelectedDate = selectedDateTimes?.any((item) => _isSameDate(item, dateTime)) ?? false;
        final bool isTodayDate = _isSameDate(dateTime, today);
        final bool isCurrentMonth = _isSameMonth(dateTime, currentDateTime);
        final bool isInRange = _isDateTimeInRange(
          dateTime: dateTime,
          rangeStartDateTime: rangeStartDateTime,
          rangeEndDateTime: rangeEndDateTime,
        );

        return GestureDetector(
          onTap: isEnabled ? onTap : null,
          child: SizedBox(
            height: 50,
            child: Padding(
              padding: switch (selectionType) {
                DSDatePickerSelectionType.single ||
                DSDatePickerSelectionType.multiple => EdgeInsets.all(context.componentPadding.xSmall),
                DSDatePickerSelectionType.range => EdgeInsets.fromLTRB(
                  isRangeStartDate ? context.componentPadding.xSmall : 0,
                  context.componentPadding.xSmall,
                  isRangeEndDate ? context.componentPadding.xSmall : 0,
                  context.componentPadding.xSmall,
                ),
                null => EdgeInsets.zero,
              },
              child: Container(
                padding: EdgeInsets.fromLTRB(
                  switch (selectionType) {
                    DSDatePickerSelectionType.single || DSDatePickerSelectionType.multiple => 0,
                    DSDatePickerSelectionType.range => isRangeStartDate ? 0 : context.componentPadding.xSmall,
                    null => 0,
                  },
                  0,
                  switch (selectionType) {
                    DSDatePickerSelectionType.single || DSDatePickerSelectionType.multiple => 0,
                    DSDatePickerSelectionType.range => isRangeEndDate ? 0 : context.componentPadding.xSmall,
                    null => 0,
                  },
                  0,
                ),
                decoration: BoxDecoration(
                  color: isInRange && isEnabled ? calendarRangeBackgroundColor : null,
                  borderRadius: BorderRadius.only(
                    topLeft: isRangeStartDate ? Radius.circular(context.componentRadius.medium) : Radius.zero,
                    topRight: isRangeEndDate ? Radius.circular(context.componentRadius.medium) : Radius.zero,
                    bottomLeft: isRangeStartDate ? Radius.circular(context.componentRadius.medium) : Radius.zero,
                    bottomRight: isRangeEndDate ? Radius.circular(context.componentRadius.medium) : Radius.zero,
                  ),
                ),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: switch (selectionType) {
                      DSDatePickerSelectionType.single ||
                      DSDatePickerSelectionType.multiple => isSelectedDate ? calendarSelectedBackgroundColor : null,
                      DSDatePickerSelectionType.range =>
                        (isRangeStartDate || isRangeEndDate) ? calendarSelectedBackgroundColor : null,
                      null => null,
                    },
                    borderRadius: BorderRadius.circular(context.componentRadius.medium),
                    border: isTodayDate
                        ? Border.all(color: calendarTodayDateBorderColor, strokeAlign: BorderSide.strokeAlignOutside)
                        : null,
                  ),
                  child: Center(
                    child: Text(
                      '${dateTime.day}',
                      style: context.textTheme.bodyMMedium.copyWith(
                        color: isEnabled
                            ? switch (isCurrentMonth) {
                                true => switch (selectionType) {
                                  DSDatePickerSelectionType.single || DSDatePickerSelectionType.multiple =>
                                    isSelectedDate ? calendarSelectedDateTextColor : calendarCurrentMonthDateTextColor,
                                  DSDatePickerSelectionType.range =>
                                    (isRangeStartDate || isRangeEndDate)
                                        ? calendarSelectedDateTextColor
                                        : calendarCurrentMonthDateTextColor,
                                  null => calendarCurrentMonthDateTextColor,
                                },
                                false => calendarOtherMonthDateTextColor,
                              }
                            : calendarDisabledDateTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
