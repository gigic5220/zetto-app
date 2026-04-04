import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../components/molecules.dart';
import '../../../extenstion.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

class DSTimePicker extends StatefulWidget {
  const DSTimePicker({super.key, required this.title, this.initialDateTime, this.onChanged});

  final String title;
  final DateTime? initialDateTime;
  final Function(TimeOfDay)? onChanged;

  @override
  State<DSTimePicker> createState() => _DSTimePickerState();
}

class _DSTimePickerState extends State<DSTimePicker> {
  final List<String> amPm = ['오전', '오후'];
  late Map<int, int> hours;
  late List<int> minutes;

  PageController? amPmController;
  PageController? hoursController;
  PageController? minutesController;

  late int selectedAmPmIndex;
  late int selectedHoursKey;
  late int selectedMinutesIndex;

  final int duration = 200;

  late PickerSlotTextColors pickerSlotTextColors;
  late PickerSlotFillColors pickerSlotFillColors;

  late Color selectedTextColor;
  late Color unselectedTextColor;
  late Color gapTextColor;

  late Color selectedBackgroundColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSTimePicker oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    pickerSlotTextColors = context.componentColors.pickerSlotText;
    pickerSlotFillColors = context.componentColors.pickerSlotFill;

    selectedTextColor = pickerSlotTextColors.primary;
    gapTextColor = pickerSlotTextColors.secondary;
    unselectedTextColor = pickerSlotTextColors.secondary;
    selectedBackgroundColor = pickerSlotFillColors.selected;
  }

  @override
  void initState() {
    super.initState();

    final initial = widget.initialDateTime;
    final int hour24 = initial?.hour ?? 4;
    final int minute0 = initial?.minute ?? 0;

    selectedAmPmIndex = hour24 >= 12 ? 1 : 0;
    amPmController = PageController(initialPage: selectedAmPmIndex, viewportFraction: 1 / 6);

    hours = _getHours();
    selectedHoursKey = hour24 % 12;
    hoursController = PageController(initialPage: selectedHoursKey, viewportFraction: 1 / 6);

    minutes = List.generate(60, (index) => index);
    selectedMinutesIndex = minute0;
    minutesController = PageController(initialPage: selectedMinutesIndex, viewportFraction: 1 / 6);

    final hour = hours.values.elementAt(selectedHoursKey) + 12 * selectedAmPmIndex;
    final minute = minutes[selectedMinutesIndex];

    widget.onChanged?.call(TimeOfDay(hour: hour, minute: minute));
  }

  Map<int, int> _getHours() {
    if (selectedAmPmIndex == 0) {
      return {12: 0, 1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, 10: 10, 11: 11};
    } else {
      return {12: 0, 1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, 10: 10, 11: 11};
    }
  }

  void _animateToPage(PageController? controller, int index) {
    void run() {
      final c = controller;
      if (c == null || !c.hasClients) return;
      c.animateToPage(
        index,
        duration: Duration(milliseconds: duration),
        curve: Curves.easeInOut,
      );
    }

    if (controller?.hasClients == true) {
      run();
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) => run());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DSListTitle.smallNormal(title: widget.title),
        SizedBox(
          height: 280,
          child: Row(
            spacing: context.componentGap.small,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: amPmController,
                  scrollDirection: Axis.vertical,
                  itemCount: amPm.length,
                  onPageChanged: (value) async {
                    HapticFeedback.lightImpact();

                    setState(() {
                      selectedAmPmIndex = value;
                      hours = _getHours();
                    });

                    final hour = hours.values.elementAt(selectedHoursKey) + 12 * selectedAmPmIndex;
                    final minute = minutes[selectedMinutesIndex];

                    widget.onChanged?.call(TimeOfDay(hour: hour, minute: minute));
                  },
                  itemBuilder: ((context, index) {
                    final bool isSelected = index == selectedAmPmIndex;

                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _animateToPage(amPmController, index),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isSelected ? selectedBackgroundColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(context.componentRadius.medium),
                        ),
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: duration),
                          style: context.textTheme.bodyXLMedium.copyWith(
                            color: isSelected ? selectedTextColor : unselectedTextColor,
                            height: 1.2,
                          ),
                          child: Center(child: Text(amPm[index])),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Text(':', style: context.textTheme.bodyXLMedium.copyWith(color: gapTextColor)),
              Expanded(
                child: PageView.builder(
                  controller: hoursController,
                  scrollDirection: Axis.vertical,
                  itemCount: hours.length,
                  onPageChanged: (value) async {
                    HapticFeedback.lightImpact();

                    setState(() {
                      selectedHoursKey = value;
                    });

                    final hour = hours.values.elementAt(selectedHoursKey) + 12 * selectedAmPmIndex;
                    final minute = minutes[selectedMinutesIndex];
                    widget.onChanged?.call(TimeOfDay(hour: hour, minute: minute));
                  },
                  itemBuilder: ((context, index) {
                    final bool isSelected = index == selectedHoursKey;

                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _animateToPage(hoursController, index),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isSelected ? selectedBackgroundColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(context.componentRadius.medium),
                        ),
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: duration),
                          style: context.textTheme.bodyXLMedium.copyWith(
                            color: isSelected ? selectedTextColor : unselectedTextColor,
                            height: 1.2,
                          ),
                          child: Center(child: Text(hours.keys.toList()[index].toString())),
                        ),
                      ),
                    );
                  }),
                ),
              ),
              Text(':', style: context.textTheme.bodyXLMedium.copyWith(color: gapTextColor)),
              Expanded(
                child: PageView.builder(
                  controller: minutesController,
                  scrollDirection: Axis.vertical,
                  itemCount: minutes.length,
                  onPageChanged: (value) async {
                    HapticFeedback.lightImpact();

                    setState(() {
                      selectedMinutesIndex = value;
                    });

                    final hour = hours.values.elementAt(selectedHoursKey) + 12 * selectedAmPmIndex;
                    final minute = minutes[selectedMinutesIndex];
                    widget.onChanged?.call(TimeOfDay(hour: hour, minute: minute));
                  },
                  itemBuilder: ((context, index) {
                    final bool isSelected = index == selectedMinutesIndex;

                    return GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _animateToPage(minutesController, index),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: isSelected ? selectedBackgroundColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(context.componentRadius.medium),
                        ),
                        child: AnimatedDefaultTextStyle(
                          duration: Duration(milliseconds: duration),
                          style: context.textTheme.bodyXLMedium.copyWith(
                            color: isSelected ? selectedTextColor : unselectedTextColor,
                            height: 1.2,
                          ),
                          child: Center(child: Text(minutes[index].toString().padLeft(2, '0'))),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
