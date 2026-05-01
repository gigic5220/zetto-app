import 'package:flutter/material.dart';

@immutable
class DataTextColors {
  const DataTextColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.disabled,
    required this.warning,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color disabled;
  final Color warning;
}

@immutable
class ListActionTextColors {
  const ListActionTextColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.disabled,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color disabled;
}

@immutable
class SolidButtonFillColors {
  const SolidButtonFillColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.warning,
    required this.disabled,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color warning;
  final Color disabled;
}

@immutable
class SolidButtonTextColors {
  const SolidButtonTextColors({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.warning,
    required this.disabled,
  });

  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color warning;
  final Color disabled;
}

@immutable
class BadgeFillColors {
  const BadgeFillColors({
    required this.accent,
    required this.primary,
    required this.secondary,
    required this.success,
    required this.tertiary,
    required this.warning,
  });

  final Color accent;
  final Color primary;
  final Color secondary;
  final Color success;
  final Color tertiary;
  final Color warning;
}

@immutable
class BadgeTextColors {
  const BadgeTextColors({
    required this.primary,
    required this.secondary,
    required this.success,
    required this.tertiary,
    required this.warning,
  });

  final Color primary;
  final Color secondary;
  final Color success;
  final Color tertiary;
  final Color warning;
}

@immutable
class CategoryFillColors {
  const CategoryFillColors({required this.activated});

  final Color activated;
}

@immutable
class CategoryTextColors {
  const CategoryTextColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class ChatBubbleFillColors {
  const ChatBubbleFillColors({required this.received, required this.sent});

  final Color received;
  final Color sent;
}

@immutable
class ChatBubbleTextColors {
  const ChatBubbleTextColors({required this.primary, required this.secondary, required this.deleted});

  final Color primary;
  final Color secondary;
  final Color deleted;
}

@immutable
class CheckBoxBorderColors {
  const CheckBoxBorderColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class CheckBoxFillColors {
  const CheckBoxFillColors({required this.activated, required this.disabled});

  final Color activated;
  final Color disabled;
}

@immutable
class CheckBoxIndicatorColors {
  const CheckBoxIndicatorColors({required this.activated, required this.disabled});

  final Color activated;
  final Color disabled;
}

@immutable
class CheckBoxTextColors {
  const CheckBoxTextColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class CheckMarkFillColors {
  const CheckMarkFillColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class CheckMarkTextColors {
  const CheckMarkTextColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class ChipBorderColors {
  const ChipBorderColors({required this.tertiary});

  final Color tertiary;
}

@immutable
class ChipFillColors {
  const ChipFillColors({required this.primary, required this.secondary});

  final Color primary;
  final Color secondary;
}

@immutable
class ChipTextColors {
  const ChipTextColors({required this.primary, required this.secondary, required this.tertiary});

  final Color primary;
  final Color secondary;
  final Color tertiary;
}

@immutable
class ChipDeleteBorderColors {
  const ChipDeleteBorderColors({required this.tertiary});

  final Color tertiary;
}

@immutable
class ChipDeleteFillColors {
  const ChipDeleteFillColors({required this.primary, required this.secondary});

  final Color primary;
  final Color secondary;
}

@immutable
class ChipDeleteTextColors {
  const ChipDeleteTextColors({required this.primary, required this.secondary, required this.tertiary});

  final Color primary;
  final Color secondary;
  final Color tertiary;
}

@immutable
class FilterButtonBorderColors {
  const FilterButtonBorderColors({
    required this.activated,
    required this.base,
    required this.disabled,
    required this.expand,
  });

  final Color activated;
  final Color base;
  final Color disabled;
  final Color expand;
}

@immutable
class FilterButtonTextColors {
  const FilterButtonTextColors({
    required this.activated,
    required this.base,
    required this.disabled,
    required this.expand,
  });

  final Color activated;
  final Color base;
  final Color disabled;
  final Color expand;
}

@immutable
class InputBorderColors {
  const InputBorderColors({
    required this.base,
    required this.disabled,
    required this.focus,
    required this.tab,
    required this.warning,
  });

  final Color base;
  final Color disabled;
  final Color focus;
  final Color tab;
  final Color warning;
}

@immutable
class InputCaretColors {
  const InputCaretColors({required this.base});

  final Color base;
}

@immutable
class InputFillColors {
  const InputFillColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class InputTextColors {
  const InputTextColors({
    required this.disabled,
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.warning,
  });

  final Color disabled;
  final Color primary;
  final Color secondary;
  final Color tertiary;
  final Color warning;
}

@immutable
class NavigationTextColors {
  const NavigationTextColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class OutlinedButtonBorderColors {
  const OutlinedButtonBorderColors({
    required this.disabled,
    required this.primary,
    required this.secondary,
    required this.warning,
  });

  final Color disabled;
  final Color primary;
  final Color secondary;
  final Color warning;
}

@immutable
class OutlinedButtonFillColors {
  const OutlinedButtonFillColors({required this.base});

  final Color base;
}

@immutable
class OutlinedButtonTextColors {
  const OutlinedButtonTextColors({
    required this.disabled,
    required this.primary,
    required this.secondary,
    required this.warning,
  });

  final Color disabled;
  final Color primary;
  final Color secondary;
  final Color warning;
}

@immutable
class RadioBorderColors {
  const RadioBorderColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class RadioDotColors {
  const RadioDotColors({required this.dot});

  final Color dot;
}

@immutable
class RadioFillColors {
  const RadioFillColors({required this.activated});

  final Color activated;
}

@immutable
class RadioTextColors {
  const RadioTextColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class SearchActionBorderColors {
  const SearchActionBorderColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class SearchActionFillColors {
  const SearchActionFillColors({required this.disabled});

  final Color disabled;
}

@immutable
class SearchActionTextColors {
  const SearchActionTextColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class SegmentedControlFillColors {
  const SegmentedControlFillColors({required this.bg});

  final Color bg;
}

@immutable
class SegmentedControlKnobColors {
  const SegmentedControlKnobColors({required this.activated});

  final Color activated;
}

@immutable
class SegmentedControlTextColors {
  const SegmentedControlTextColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class SelectPanelBorderColors {
  const SelectPanelBorderColors({
    required this.base,
    required this.disabled,
    required this.selected,
    required this.tab,
  });

  final Color base;
  final Color disabled;
  final Color selected;
  final Color tab;
}

@immutable
class SelectPanelFillColors {
  const SelectPanelFillColors({required this.selected});

  final Color selected;
}

@immutable
class SelectPanelTextColors {
  const SelectPanelTextColors({required this.base, required this.disabled, required this.selected, required this.tab});

  final Color base;
  final Color disabled;
  final Color selected;
  final Color tab;
}

@immutable
class SwitchFillColors {
  const SwitchFillColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class SwitchTextColors {
  const SwitchTextColors({required this.activated, required this.base, required this.disabled});

  final Color activated;
  final Color base;
  final Color disabled;
}

@immutable
class SwitchThumbColors {
  const SwitchThumbColors({required this.base, required this.activated, required this.disabled});

  final Color base;
  final Color activated;
  final Color disabled;
}

@immutable
class TabBorderColors {
  const TabBorderColors({required this.base, required this.activated});

  final Color base;
  final Color activated;
}

@immutable
class TabTextColors {
  const TabTextColors({required this.activated, required this.base});

  final Color activated;
  final Color base;
}

@immutable
class TableBorderColors {
  const TableBorderColors({required this.cell, required this.tableHeader});

  final Color cell;
  final Color tableHeader;
}

@immutable
class TableFillColors {
  const TableFillColors({required this.hover});

  final Color hover;
}

@immutable
class ToastFillColors {
  const ToastFillColors({required this.primary});

  final Color primary;
}

@immutable
class ToastTextColors {
  const ToastTextColors({required this.primary});

  final Color primary;
}

@immutable
class DividerFillColors {
  const DividerFillColors({required this.base});

  final Color base;
}

@immutable
class TextButtonColors {
  const TextButtonColors({
    required this.primary,
    required this.secondary,
    required this.disabled,
    required this.warning,
  });

  final Color primary;
  final Color secondary;
  final Color disabled;
  final Color warning;
}

class PickerCalendarTextColors {
  const PickerCalendarTextColors({
    required this.primary,
    required this.secondary,
    required this.inverse,
    required this.disabled,
  });

  final Color primary;
  final Color secondary;
  final Color inverse;
  final Color disabled;
}

@immutable
class PickerCalendarFillColors {
  const PickerCalendarFillColors({required this.selected, required this.tab, required this.range});

  final Color selected;
  final Color tab;
  final Color range;
}

@immutable
class PickerCalendarBorderColors {
  const PickerCalendarBorderColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}

@immutable
class PickerSlotTextColors {
  const PickerSlotTextColors({required this.primary, required this.secondary, required this.disabled});

  final Color primary;
  final Color secondary;
  final Color disabled;
}

@immutable
class PickerSlotFillColors {
  const PickerSlotFillColors({required this.selected});

  final Color selected;
}

@immutable
class TooltipFillColors {
  const TooltipFillColors({required this.base});

  final Color base;
}

@immutable
class TooltipTextColors {
  const TooltipTextColors({required this.base});

  final Color base;
}

@immutable
class CardFillColors {
  const CardFillColors({required this.base});

  final Color base;
}

@immutable
class CardBorderColors {
  const CardBorderColors({required this.base});

  final Color base;
}

@immutable
class AutoCompleteTextColors {
  const AutoCompleteTextColors({required this.keyword});

  final Color keyword;
}

@immutable
class ModalFillColors {
  const ModalFillColors({required this.base});

  final Color base;
}

@immutable
class ModalBorderColors {
  const ModalBorderColors({required this.base});

  final Color base;
}

@immutable
class BannerFillColors {
  const BannerFillColors({required this.base, required this.brand, required this.warning});

  final Color base;
  final Color brand;
  final Color warning;
}

@immutable
class BookMarkFillColors {
  const BookMarkFillColors({required this.base, required this.activated, required this.disabled});

  final Color base;
  final Color activated;
  final Color disabled;
}

@immutable
class BookMarkTextColors {
  const BookMarkTextColors({required this.base, required this.activated, required this.disabled});

  final Color base;
  final Color activated;
  final Color disabled;
}

@immutable
class LikeFillColors {
  const LikeFillColors({required this.base, required this.activated, required this.disabled});

  final Color base;
  final Color activated;
  final Color disabled;
}

@immutable
class LikeTextColors {
  const LikeTextColors({required this.base, required this.activated, required this.disabled});

  final Color base;
  final Color activated;
  final Color disabled;
}

@immutable
class DropDownFillColors {
  const DropDownFillColors({required this.base, required this.disabled});

  final Color base;
  final Color disabled;
}
