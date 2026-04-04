import 'package:flutter/material.dart';

import '../semantic/app_semantic_colors.dart';
import 'colors/generated_component_colors.dart';

@immutable
class AppComponentColors extends ThemeExtension<AppComponentColors> {
  const AppComponentColors({
    required this.solidButtonFill,
    required this.solidButtonText,
    required this.dataText,
    required this.badgeFill,
    required this.badgeText,
    required this.categoryFill,
    required this.categoryText,
    required this.checkBoxBorder,
    required this.checkBoxFill,
    required this.checkBoxIndicator,
    required this.checkBoxText,
    required this.checkMarkFill,
    required this.checkMarkText,
    required this.chatBubbleFill,
    required this.chatBubbleText,
    required this.chipBorder,
    required this.chipFill,
    required this.chipText,
    required this.chipDeleteBorder,
    required this.chipDeleteFill,
    required this.chipDeleteText,
    required this.filterButtonBorder,
    required this.filterButtonText,
    required this.inputBorder,
    required this.inputCaret,
    required this.inputFill,
    required this.inputText,
    required this.navigationText,
    required this.outlinedButtonBorder,
    required this.outlinedButtonFill,
    required this.outlinedButtonText,
    required this.radioBorder,
    required this.radioDot,
    required this.radioFill,
    required this.radioText,
    required this.searchActionBorder,
    required this.searchActionFill,
    required this.searchActionText,
    required this.segmentedControlFill,
    required this.segmentedControlKnob,
    required this.segmentedControlText,
    required this.selectPanelBorder,
    required this.selectPanelFill,
    required this.selectPanelText,
    required this.switchFill,
    required this.switchText,
    required this.switchThumb,
    required this.tabBorder,
    required this.tabText,
    required this.tableBorder,
    required this.tableFill,
    required this.toastFill,
    required this.toastText,
    required this.dividerFill,
    required this.textButton,
    required this.pickerCalendarText,
    required this.pickerCalendarFill,
    required this.pickerCalendarBorder,
    required this.pickerSlotText,
    required this.pickerSlotFill,
    required this.tooltipFill,
    required this.tooltipText,
    required this.cardFill,
    required this.cardBorder,
    required this.autoCompleteText,
    required this.modalFill,
    required this.modalBorder,
    required this.bannerFill,
    required this.bookMarkFill,
    required this.bookMarkText,
    required this.likeFill,
    required this.likeText,
    required this.dropDownFill,
  });

  final SolidButtonFillColors solidButtonFill;
  final SolidButtonTextColors solidButtonText;
  final DataTextColors dataText;
  final BadgeFillColors badgeFill;
  final BadgeTextColors badgeText;
  final CategoryFillColors categoryFill;
  final CategoryTextColors categoryText;
  final ChatBubbleFillColors chatBubbleFill;
  final ChatBubbleTextColors chatBubbleText;
  final CheckBoxBorderColors checkBoxBorder;
  final CheckBoxFillColors checkBoxFill;
  final CheckBoxIndicatorColors checkBoxIndicator;
  final CheckBoxTextColors checkBoxText;
  final CheckMarkFillColors checkMarkFill;
  final CheckMarkTextColors checkMarkText;
  final ChipBorderColors chipBorder;
  final ChipFillColors chipFill;
  final ChipTextColors chipText;
  final ChipDeleteBorderColors chipDeleteBorder;
  final ChipDeleteFillColors chipDeleteFill;
  final ChipDeleteTextColors chipDeleteText;
  final FilterButtonBorderColors filterButtonBorder;
  final FilterButtonTextColors filterButtonText;
  final InputBorderColors inputBorder;
  final InputCaretColors inputCaret;
  final InputFillColors inputFill;
  final InputTextColors inputText;
  final NavigationTextColors navigationText;
  final OutlinedButtonBorderColors outlinedButtonBorder;
  final OutlinedButtonFillColors outlinedButtonFill;
  final OutlinedButtonTextColors outlinedButtonText;
  final RadioBorderColors radioBorder;
  final RadioDotColors radioDot;
  final RadioFillColors radioFill;
  final RadioTextColors radioText;
  final SearchActionBorderColors searchActionBorder;
  final SearchActionFillColors searchActionFill;
  final SearchActionTextColors searchActionText;
  final SegmentedControlFillColors segmentedControlFill;
  final SegmentedControlKnobColors segmentedControlKnob;
  final SegmentedControlTextColors segmentedControlText;
  final SelectPanelBorderColors selectPanelBorder;
  final SelectPanelFillColors selectPanelFill;
  final SelectPanelTextColors selectPanelText;
  final SwitchFillColors switchFill;
  final SwitchTextColors switchText;
  final SwitchThumbColors switchThumb;
  final TabBorderColors tabBorder;
  final TabTextColors tabText;
  final TableBorderColors tableBorder;
  final TableFillColors tableFill;
  final ToastFillColors toastFill;
  final ToastTextColors toastText;
  final DividerFillColors dividerFill;
  final TextButtonColors textButton;
  final PickerCalendarTextColors pickerCalendarText;
  final PickerCalendarFillColors pickerCalendarFill;
  final PickerCalendarBorderColors pickerCalendarBorder;
  final PickerSlotTextColors pickerSlotText;
  final PickerSlotFillColors pickerSlotFill;
  final TooltipFillColors tooltipFill;
  final TooltipTextColors tooltipText;
  final CardFillColors cardFill;
  final CardBorderColors cardBorder;
  final AutoCompleteTextColors autoCompleteText;
  final ModalFillColors modalFill;
  final ModalBorderColors modalBorder;
  final BannerFillColors bannerFill;
  final BookMarkFillColors bookMarkFill;
  final BookMarkTextColors bookMarkText;
  final LikeFillColors likeFill;
  final LikeTextColors likeText;
  final DropDownFillColors dropDownFill;
  static final AppComponentColors light = AppComponentColors(
    solidButtonFill: SolidButtonFillColors(
      primary: AppSemanticColors.light.brandPrimary,
      secondary: AppSemanticColors.light.brandSecondary,
      tertiary: AppSemanticColors.light.fillSubtle,
      warning: AppSemanticColors.light.fillWarning,
      disabled: AppSemanticColors.light.fillDisabled,
    ),
    solidButtonText: SolidButtonTextColors(
      primary: AppSemanticColors.light.staticWhite,
      secondary: AppSemanticColors.light.brandStrong,
      tertiary: AppSemanticColors.light.textPrimary,
      warning: AppSemanticColors.light.textWarning,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    dataText: DataTextColors(
      primary: AppSemanticColors.light.textPrimary,
      secondary: AppSemanticColors.light.textSecondary,
      tertiary: AppSemanticColors.light.textTertiary,
      disabled: AppSemanticColors.light.textDisabled,
      warning: AppSemanticColors.light.textWarning,
    ),
    badgeFill: BadgeFillColors(
      primary: AppSemanticColors.light.brandPrimary,
      secondary: AppSemanticColors.light.brandSecondary,
      tertiary: AppSemanticColors.light.fillSubtle,
      success: AppSemanticColors.light.fillSuccess,
      warning: AppSemanticColors.light.fillWarning,
      accent: AppSemanticColors.light.accentRed,
    ),
    badgeText: BadgeTextColors(
      primary: AppSemanticColors.light.staticWhite,
      secondary: AppSemanticColors.light.brandPrimary,
      tertiary: AppSemanticColors.light.textSecondary,
      success: AppSemanticColors.light.textSuccess,
      warning: AppSemanticColors.light.textWarning,
    ),
    categoryFill: CategoryFillColors(activated: AppSemanticColors.light.fillInverse),
    categoryText: CategoryTextColors(
      activated: AppSemanticColors.light.textInverse,
      base: AppSemanticColors.light.textTertiary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    chatBubbleFill: ChatBubbleFillColors(
      received: AppSemanticColors.light.fillSubtle,
      sent: AppSemanticColors.light.brandSecondary,
    ),
    chatBubbleText: ChatBubbleTextColors(
      primary: AppSemanticColors.light.textPrimary,
      secondary: AppSemanticColors.light.textTertiary,
      deleted: AppSemanticColors.light.textTertiary,
    ),
    checkBoxBorder: CheckBoxBorderColors(
      base: AppSemanticColors.light.borderDefault,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    checkBoxFill: CheckBoxFillColors(
      activated: AppSemanticColors.light.fillInverse,
      disabled: AppSemanticColors.light.fillDisabled,
    ),
    checkBoxIndicator: CheckBoxIndicatorColors(
      activated: AppSemanticColors.light.staticWhite,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    checkBoxText: CheckBoxTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    checkMarkFill: CheckMarkFillColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    checkMarkText: CheckMarkTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    chipBorder: ChipBorderColors(tertiary: AppSemanticColors.light.borderSubtle),
    chipFill: ChipFillColors(
      primary: AppSemanticColors.light.brandSecondary,
      secondary: AppSemanticColors.light.fillSubtle,
    ),
    chipText: ChipTextColors(
      primary: AppSemanticColors.light.brandPrimary,
      secondary: AppSemanticColors.light.textPrimary,
      tertiary: AppSemanticColors.light.textSecondary,
    ),
    chipDeleteBorder: ChipDeleteBorderColors(tertiary: AppSemanticColors.light.borderSubtle),
    chipDeleteFill: ChipDeleteFillColors(
      primary: AppSemanticColors.light.brandSecondary,
      secondary: AppSemanticColors.light.fillSubtle,
    ),
    chipDeleteText: ChipDeleteTextColors(
      primary: AppSemanticColors.light.brandPrimary,
      secondary: AppSemanticColors.light.textPrimary,
      tertiary: AppSemanticColors.light.textSecondary,
    ),
    filterButtonBorder: FilterButtonBorderColors(
      base: AppSemanticColors.light.borderSubtle,
      expand: AppSemanticColors.light.borderInverse,
      activated: AppSemanticColors.light.borderInverse,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    filterButtonText: FilterButtonTextColors(
      base: AppSemanticColors.light.textSecondary,
      expand: AppSemanticColors.light.textPrimary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    inputBorder: InputBorderColors(
      base: AppSemanticColors.light.borderSubtle,
      tab: AppSemanticColors.light.borderStrong,
      focus: AppSemanticColors.light.borderInverse,
      warning: AppSemanticColors.light.borderWarning,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    inputCaret: InputCaretColors(base: AppSemanticColors.light.borderInverse),
    inputFill: InputFillColors(
      base: AppSemanticColors.light.fillSubtle,
      disabled: AppSemanticColors.light.fillDisabled,
    ),
    inputText: InputTextColors(
      primary: AppSemanticColors.light.textPrimary,
      secondary: AppSemanticColors.light.textSecondary,
      tertiary: AppSemanticColors.light.textTertiary,
      warning: AppSemanticColors.light.textWarning,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    navigationText: NavigationTextColors(
      base: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    outlinedButtonBorder: OutlinedButtonBorderColors(
      primary: AppSemanticColors.light.brandPrimary,
      secondary: AppSemanticColors.light.borderDefault,
      warning: AppSemanticColors.light.borderWarning,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    outlinedButtonFill: OutlinedButtonFillColors(base: AppSemanticColors.light.fillDefault),
    outlinedButtonText: OutlinedButtonTextColors(
      primary: AppSemanticColors.light.brandStrong,
      secondary: AppSemanticColors.light.textSecondary,
      warning: AppSemanticColors.light.textWarning,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    radioBorder: RadioBorderColors(
      base: AppSemanticColors.light.borderDefault,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    radioDot: RadioDotColors(dot: AppSemanticColors.light.staticWhite),
    radioFill: RadioFillColors(activated: AppSemanticColors.light.fillInverse),
    radioText: RadioTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    searchActionBorder: SearchActionBorderColors(
      base: AppSemanticColors.light.borderInverse,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    searchActionFill: SearchActionFillColors(disabled: AppSemanticColors.light.fillDisabled),
    searchActionText: SearchActionTextColors(
      base: AppSemanticColors.light.textTertiary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    segmentedControlFill: SegmentedControlFillColors(bg: AppSemanticColors.light.fillSubtle),
    segmentedControlKnob: SegmentedControlKnobColors(activated: AppSemanticColors.light.fillDefault),
    segmentedControlText: SegmentedControlTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    selectPanelBorder: SelectPanelBorderColors(
      base: AppSemanticColors.light.borderDefault,
      tab: AppSemanticColors.light.borderStrong,
      selected: AppSemanticColors.light.borderInverse,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    selectPanelFill: SelectPanelFillColors(selected: AppSemanticColors.light.fillSubtle),
    selectPanelText: SelectPanelTextColors(
      base: AppSemanticColors.light.textTertiary,
      tab: AppSemanticColors.light.textSecondary,
      selected: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    switchFill: SwitchFillColors(
      base: AppSemanticColors.light.fillStrong,
      activated: AppSemanticColors.light.fillInverse,
      disabled: AppSemanticColors.light.fillDisabled,
    ),
    switchText: SwitchTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    switchThumb: SwitchThumbColors(
      base: AppSemanticColors.light.staticWhite,
      activated: AppSemanticColors.light.staticWhite,
      disabled: AppSemanticColors.light.fillSubtle,
    ),
    tabBorder: TabBorderColors(
      base: AppSemanticColors.light.borderDefault,
      activated: AppSemanticColors.light.borderInverse,
    ),
    tabText: TabTextColors(base: AppSemanticColors.light.textTertiary, activated: AppSemanticColors.light.textPrimary),
    tableBorder: TableBorderColors(
      cell: AppSemanticColors.light.borderSubtle,
      tableHeader: AppSemanticColors.light.borderDefault,
    ),
    tableFill: TableFillColors(hover: AppSemanticColors.light.fillSubtle),
    toastFill: ToastFillColors(primary: AppSemanticColors.light.layerStrong),
    toastText: ToastTextColors(primary: AppSemanticColors.light.textInverse),
    dividerFill: DividerFillColors(base: AppSemanticColors.light.fillSubtle),
    textButton: TextButtonColors(
      primary: AppSemanticColors.light.brandPrimary,
      secondary: AppSemanticColors.light.textSecondary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    pickerCalendarText: PickerCalendarTextColors(
      primary: AppSemanticColors.light.textPrimary,
      secondary: AppSemanticColors.light.textTertiary,
      inverse: AppSemanticColors.light.textInverse,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    pickerCalendarFill: PickerCalendarFillColors(
      selected: AppSemanticColors.light.brandStrong,
      tab: AppSemanticColors.light.fillSubtle,
      range: AppSemanticColors.light.brandSecondary,
    ),
    pickerCalendarBorder: PickerCalendarBorderColors(
      base: AppSemanticColors.light.borderSubtle,
      disabled: AppSemanticColors.light.borderDisabled,
    ),
    pickerSlotText: PickerSlotTextColors(
      primary: AppSemanticColors.light.textPrimary,
      secondary: AppSemanticColors.light.textTertiary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    pickerSlotFill: PickerSlotFillColors(selected: AppSemanticColors.light.fillSubtle),
    tooltipFill: TooltipFillColors(base: AppSemanticColors.light.fillInverse),
    tooltipText: TooltipTextColors(base: AppSemanticColors.light.textInverse),
    cardFill: CardFillColors(base: AppSemanticColors.light.bgCard),
    cardBorder: CardBorderColors(base: AppSemanticColors.light.borderSubtle),
    autoCompleteText: AutoCompleteTextColors(keyword: AppSemanticColors.light.accentBlue),
    modalFill: ModalFillColors(base: AppSemanticColors.light.bgPage),
    modalBorder: ModalBorderColors(base: AppSemanticColors.light.borderSubtle),
    bannerFill: BannerFillColors(
      base: AppSemanticColors.light.fillSubtle,
      brand: AppSemanticColors.light.brandSecondary,
      warning: AppSemanticColors.light.fillWarning,
    ),
    bookMarkFill: BookMarkFillColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.accentYellow,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    bookMarkText: BookMarkTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    likeFill: LikeFillColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.accentRed,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    likeText: LikeTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    dropDownFill: DropDownFillColors(
      base: AppSemanticColors.light.textTertiary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
  );

  static final AppComponentColors dark = AppComponentColors(
    solidButtonFill: SolidButtonFillColors(
      primary: AppSemanticColors.dark.brandPrimary,
      secondary: AppSemanticColors.dark.brandSecondary,
      tertiary: AppSemanticColors.dark.fillSubtle,
      warning: AppSemanticColors.dark.fillWarning,
      disabled: AppSemanticColors.dark.fillDisabled,
    ),
    solidButtonText: SolidButtonTextColors(
      primary: AppSemanticColors.dark.staticWhite,
      secondary: AppSemanticColors.dark.brandStrong,
      tertiary: AppSemanticColors.dark.textPrimary,
      warning: AppSemanticColors.dark.textWarning,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    dataText: DataTextColors(
      primary: AppSemanticColors.dark.textPrimary,
      secondary: AppSemanticColors.dark.textSecondary,
      tertiary: AppSemanticColors.dark.textTertiary,
      disabled: AppSemanticColors.dark.textDisabled,
      warning: AppSemanticColors.dark.textWarning,
    ),
    badgeFill: BadgeFillColors(
      primary: AppSemanticColors.dark.brandPrimary,
      secondary: AppSemanticColors.dark.brandSecondary,
      tertiary: AppSemanticColors.dark.fillSubtle,
      success: AppSemanticColors.dark.fillSuccess,
      warning: AppSemanticColors.dark.fillWarning,
      accent: AppSemanticColors.dark.accentRed,
    ),
    badgeText: BadgeTextColors(
      primary: AppSemanticColors.dark.staticWhite,
      secondary: AppSemanticColors.dark.brandStrong,
      tertiary: AppSemanticColors.dark.textSecondary,
      success: AppSemanticColors.dark.textSuccess,
      warning: AppSemanticColors.dark.textWarning,
    ),
    categoryFill: CategoryFillColors(activated: AppSemanticColors.dark.fillInverse),
    categoryText: CategoryTextColors(
      activated: AppSemanticColors.dark.textInverse,
      base: AppSemanticColors.dark.textTertiary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    chatBubbleFill: ChatBubbleFillColors(
      received: AppSemanticColors.dark.fillSubtle,
      sent: AppSemanticColors.dark.brandSecondary,
    ),
    chatBubbleText: ChatBubbleTextColors(
      primary: AppSemanticColors.dark.textPrimary,
      secondary: AppSemanticColors.dark.textTertiary,
      deleted: AppSemanticColors.dark.textTertiary,
    ),
    checkBoxBorder: CheckBoxBorderColors(
      base: AppSemanticColors.dark.borderDefault,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    checkBoxFill: CheckBoxFillColors(
      activated: AppSemanticColors.dark.fillInverse,
      disabled: AppSemanticColors.dark.fillDisabled,
    ),
    checkBoxIndicator: CheckBoxIndicatorColors(
      activated: AppSemanticColors.dark.staticBlack,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    checkBoxText: CheckBoxTextColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    checkMarkFill: CheckMarkFillColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    checkMarkText: CheckMarkTextColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    chipBorder: ChipBorderColors(tertiary: AppSemanticColors.dark.borderDefault),
    chipFill: ChipFillColors(
      primary: AppSemanticColors.dark.brandSecondary,
      secondary: AppSemanticColors.dark.fillSubtle,
    ),
    chipText: ChipTextColors(
      primary: AppSemanticColors.dark.brandStrong,
      secondary: AppSemanticColors.dark.textPrimary,
      tertiary: AppSemanticColors.dark.textSecondary,
    ),
    chipDeleteBorder: ChipDeleteBorderColors(tertiary: AppSemanticColors.dark.borderDefault),
    chipDeleteFill: ChipDeleteFillColors(
      primary: AppSemanticColors.dark.brandSecondary,
      secondary: AppSemanticColors.dark.fillSubtle,
    ),
    chipDeleteText: ChipDeleteTextColors(
      primary: AppSemanticColors.dark.brandStrong,
      secondary: AppSemanticColors.dark.textPrimary,
      tertiary: AppSemanticColors.dark.textSecondary,
    ),
    filterButtonBorder: FilterButtonBorderColors(
      base: AppSemanticColors.dark.borderDefault,
      expand: AppSemanticColors.dark.borderInverse,
      activated: AppSemanticColors.dark.borderInverse,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    filterButtonText: FilterButtonTextColors(
      base: AppSemanticColors.dark.textSecondary,
      expand: AppSemanticColors.dark.textPrimary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    inputBorder: InputBorderColors(
      base: AppSemanticColors.dark.borderSubtle,
      tab: AppSemanticColors.dark.borderStrong,
      focus: AppSemanticColors.dark.borderInverse,
      warning: AppSemanticColors.dark.borderWarning,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    inputCaret: InputCaretColors(base: AppSemanticColors.dark.borderInverse),
    inputFill: InputFillColors(base: AppSemanticColors.dark.fillSubtle, disabled: AppSemanticColors.dark.fillDisabled),
    inputText: InputTextColors(
      primary: AppSemanticColors.dark.textPrimary,
      secondary: AppSemanticColors.dark.textSecondary,
      tertiary: AppSemanticColors.dark.textTertiary,
      warning: AppSemanticColors.dark.textWarning,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    navigationText: NavigationTextColors(
      base: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    outlinedButtonBorder: OutlinedButtonBorderColors(
      primary: AppSemanticColors.dark.brandStrong,
      secondary: AppSemanticColors.dark.borderSubtle,
      warning: AppSemanticColors.dark.borderWarning,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    outlinedButtonFill: OutlinedButtonFillColors(base: AppSemanticColors.dark.fillDefault),
    outlinedButtonText: OutlinedButtonTextColors(
      disabled: AppSemanticColors.dark.textDisabled,
      primary: AppSemanticColors.dark.brandStrong,
      secondary: AppSemanticColors.dark.textSecondary,
      warning: AppSemanticColors.dark.textWarning,
    ),
    radioBorder: RadioBorderColors(
      base: AppSemanticColors.dark.borderDefault,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    radioDot: RadioDotColors(dot: AppSemanticColors.dark.staticBlack),
    radioFill: RadioFillColors(activated: AppSemanticColors.dark.fillInverse),
    radioText: RadioTextColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    searchActionBorder: SearchActionBorderColors(
      base: AppSemanticColors.dark.borderInverse,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    searchActionFill: SearchActionFillColors(disabled: AppSemanticColors.dark.fillDisabled),
    searchActionText: SearchActionTextColors(
      base: AppSemanticColors.dark.textSecondary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    segmentedControlFill: SegmentedControlFillColors(bg: AppSemanticColors.dark.fillSubtle),
    segmentedControlKnob: SegmentedControlKnobColors(activated: AppSemanticColors.dark.fillStrong),
    segmentedControlText: SegmentedControlTextColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    selectPanelBorder: SelectPanelBorderColors(
      base: AppSemanticColors.dark.borderDefault,
      tab: AppSemanticColors.dark.borderStrong,
      selected: AppSemanticColors.dark.borderInverse,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    selectPanelFill: SelectPanelFillColors(selected: AppSemanticColors.dark.fillSubtle),
    selectPanelText: SelectPanelTextColors(
      base: AppSemanticColors.dark.textTertiary,
      tab: AppSemanticColors.dark.textSecondary,
      selected: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    switchFill: SwitchFillColors(
      base: AppSemanticColors.dark.fillStrong,
      activated: AppSemanticColors.dark.fillInverse,
      disabled: AppSemanticColors.dark.fillDisabled,
    ),
    switchText: SwitchTextColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    switchThumb: SwitchThumbColors(
      base: AppSemanticColors.dark.staticWhite,
      activated: AppSemanticColors.dark.staticBlack,
      disabled: AppSemanticColors.dark.fillSubtle,
    ),
    tabBorder: TabBorderColors(
      base: AppSemanticColors.dark.borderDefault,
      activated: AppSemanticColors.dark.borderInverse,
    ),
    tabText: TabTextColors(base: AppSemanticColors.dark.textTertiary, activated: AppSemanticColors.dark.textPrimary),
    tableBorder: TableBorderColors(
      cell: AppSemanticColors.dark.borderSubtle,
      tableHeader: AppSemanticColors.dark.borderStrong,
    ),
    tableFill: TableFillColors(hover: AppSemanticColors.dark.fillSubtle),
    toastFill: ToastFillColors(primary: AppSemanticColors.dark.fillSubtle),
    toastText: ToastTextColors(primary: AppSemanticColors.dark.textPrimary),
    dividerFill: DividerFillColors(base: AppSemanticColors.dark.fillSubtle),
    textButton: TextButtonColors(
      primary: AppSemanticColors.dark.brandStrong,
      secondary: AppSemanticColors.dark.textSecondary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    pickerCalendarText: PickerCalendarTextColors(
      primary: AppSemanticColors.dark.textPrimary,
      secondary: AppSemanticColors.dark.textTertiary,
      inverse: AppSemanticColors.dark.textInverse,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    pickerCalendarFill: PickerCalendarFillColors(
      selected: AppSemanticColors.dark.brandStrong,
      tab: AppSemanticColors.dark.fillSubtle,
      range: AppSemanticColors.dark.brandSecondary,
    ),
    pickerCalendarBorder: PickerCalendarBorderColors(
      base: AppSemanticColors.dark.borderDefault,
      disabled: AppSemanticColors.dark.borderDisabled,
    ),
    pickerSlotText: PickerSlotTextColors(
      primary: AppSemanticColors.dark.textPrimary,
      secondary: AppSemanticColors.dark.textTertiary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    pickerSlotFill: PickerSlotFillColors(selected: AppSemanticColors.dark.fillSubtle),
    tooltipFill: TooltipFillColors(base: AppSemanticColors.dark.fillInverse),
    tooltipText: TooltipTextColors(base: AppSemanticColors.dark.textInverse),
    cardFill: CardFillColors(base: AppSemanticColors.dark.bgCard),
    cardBorder: CardBorderColors(base: AppSemanticColors.dark.borderSubtle),
    autoCompleteText: AutoCompleteTextColors(keyword: AppSemanticColors.dark.accentBlue),
    modalFill: ModalFillColors(base: AppSemanticColors.dark.bgPage),
    modalBorder: ModalBorderColors(base: AppSemanticColors.dark.borderSubtle),
    bannerFill: BannerFillColors(
      base: AppSemanticColors.dark.fillSubtle,
      brand: AppSemanticColors.dark.brandSecondary,
      warning: AppSemanticColors.dark.fillWarning,
    ),
    bookMarkFill: BookMarkFillColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.accentYellow,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    bookMarkText: BookMarkTextColors(
      base: AppSemanticColors.dark.textTertiary,
      activated: AppSemanticColors.dark.textPrimary,
      disabled: AppSemanticColors.dark.textDisabled,
    ),
    likeFill: LikeFillColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.accentRed,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    likeText: LikeTextColors(
      base: AppSemanticColors.light.textTertiary,
      activated: AppSemanticColors.light.textPrimary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
    dropDownFill: DropDownFillColors(
      base: AppSemanticColors.light.textTertiary,
      disabled: AppSemanticColors.light.textDisabled,
    ),
  );

  @override
  AppComponentColors copyWith({
    SolidButtonFillColors? solidButtonFill,
    SolidButtonTextColors? solidButtonText,
    ListActionTextColors? listActionText,
    DataTextColors? dataText,
    BadgeFillColors? badgeFill,
    BadgeTextColors? badgeText,
    CategoryFillColors? categoryFill,
    CategoryTextColors? categoryText,
    CheckBoxBorderColors? checkBoxBorder,
    CheckBoxFillColors? checkBoxFill,
    CheckBoxIndicatorColors? checkBoxIndicator,
    CheckBoxTextColors? checkBoxText,
    CheckMarkFillColors? checkMarkFill,
    CheckMarkTextColors? checkMarkText,
    ChatBubbleFillColors? chatBubbleFill,
    ChatBubbleTextColors? chatBubbleText,
    ChipBorderColors? chipBorder,
    ChipFillColors? chipFill,
    ChipTextColors? chipText,
    ChipDeleteBorderColors? chipDeleteBorder,
    ChipDeleteFillColors? chipDeleteFill,
    ChipDeleteTextColors? chipDeleteText,
    FilterButtonBorderColors? filterButtonBorder,
    FilterButtonTextColors? filterButtonText,
    InputBorderColors? inputBorder,
    InputCaretColors? inputCaret,
    InputFillColors? inputFill,
    InputTextColors? inputText,
    NavigationTextColors? navigationText,
    OutlinedButtonBorderColors? outlinedButtonBorder,
    OutlinedButtonFillColors? outlinedButtonFill,
    OutlinedButtonTextColors? outlinedButtonText,
    RadioBorderColors? radioBorder,
    RadioDotColors? radioDot,
    RadioFillColors? radioFill,
    RadioTextColors? radioText,
    SearchActionBorderColors? searchActionBorder,
    SearchActionFillColors? searchActionFill,
    SearchActionTextColors? searchActionText,
    SegmentedControlFillColors? segmentedControlFill,
    SegmentedControlKnobColors? segmentedControlKnob,
    SegmentedControlTextColors? segmentedControlText,
    SelectPanelBorderColors? selectPanelBorder,
    SelectPanelFillColors? selectPanelFill,
    SelectPanelTextColors? selectPanelText,
    SwitchFillColors? switchFill,
    SwitchTextColors? switchText,
    SwitchThumbColors? switchThumb,
    TabBorderColors? tabBorder,
    TabTextColors? tabText,
    TableBorderColors? tableBorder,
    TableFillColors? tableFill,
    ToastFillColors? toastFill,
    ToastTextColors? toastText,
    DividerFillColors? dividerFill,
    TextButtonColors? textButton,
    PickerCalendarTextColors? pickerCalendarText,
    PickerCalendarFillColors? pickerCalendarFill,
    PickerCalendarBorderColors? pickerCalendarBorder,
    PickerSlotTextColors? pickerSlotText,
    PickerSlotFillColors? pickerSlotFill,
    TooltipFillColors? tooltipFill,
    TooltipTextColors? tooltipText,
    CardFillColors? cardFill,
    CardBorderColors? cardBorder,
    AutoCompleteTextColors? autoCompleteText,
    ModalFillColors? modalFill,
    ModalBorderColors? modalBorder,
    BannerFillColors? bannerFill,
    BookMarkFillColors? bookMarkFill,
    BookMarkTextColors? bookMarkText,
    LikeFillColors? likeFill,
    LikeTextColors? likeText,
    DropDownFillColors? dropDownFill,
  }) {
    return AppComponentColors(
      solidButtonFill: solidButtonFill ?? this.solidButtonFill,
      solidButtonText: solidButtonText ?? this.solidButtonText,
      dataText: dataText ?? this.dataText,
      badgeFill: badgeFill ?? this.badgeFill,
      badgeText: badgeText ?? this.badgeText,
      categoryFill: categoryFill ?? this.categoryFill,
      categoryText: categoryText ?? this.categoryText,
      chatBubbleFill: chatBubbleFill ?? this.chatBubbleFill,
      chatBubbleText: chatBubbleText ?? this.chatBubbleText,
      checkBoxBorder: checkBoxBorder ?? this.checkBoxBorder,
      checkBoxFill: checkBoxFill ?? this.checkBoxFill,
      checkBoxIndicator: checkBoxIndicator ?? this.checkBoxIndicator,
      checkBoxText: checkBoxText ?? this.checkBoxText,
      checkMarkFill: checkMarkFill ?? this.checkMarkFill,
      checkMarkText: checkMarkText ?? this.checkMarkText,
      chipBorder: chipBorder ?? this.chipBorder,
      chipFill: chipFill ?? this.chipFill,
      chipText: chipText ?? this.chipText,
      chipDeleteBorder: chipDeleteBorder ?? this.chipDeleteBorder,
      chipDeleteFill: chipDeleteFill ?? this.chipDeleteFill,
      chipDeleteText: chipDeleteText ?? this.chipDeleteText,
      filterButtonBorder: filterButtonBorder ?? this.filterButtonBorder,
      filterButtonText: filterButtonText ?? this.filterButtonText,
      inputBorder: inputBorder ?? this.inputBorder,
      inputCaret: inputCaret ?? this.inputCaret,
      inputFill: inputFill ?? this.inputFill,
      inputText: inputText ?? this.inputText,
      navigationText: navigationText ?? this.navigationText,
      outlinedButtonBorder: outlinedButtonBorder ?? this.outlinedButtonBorder,
      outlinedButtonFill: outlinedButtonFill ?? this.outlinedButtonFill,
      outlinedButtonText: outlinedButtonText ?? this.outlinedButtonText,
      radioBorder: radioBorder ?? this.radioBorder,
      radioDot: radioDot ?? this.radioDot,
      radioFill: radioFill ?? this.radioFill,
      radioText: radioText ?? this.radioText,
      searchActionBorder: searchActionBorder ?? this.searchActionBorder,
      searchActionFill: searchActionFill ?? this.searchActionFill,
      searchActionText: searchActionText ?? this.searchActionText,
      segmentedControlFill: segmentedControlFill ?? this.segmentedControlFill,
      segmentedControlKnob: segmentedControlKnob ?? this.segmentedControlKnob,
      segmentedControlText: segmentedControlText ?? this.segmentedControlText,
      selectPanelBorder: selectPanelBorder ?? this.selectPanelBorder,
      selectPanelFill: selectPanelFill ?? this.selectPanelFill,
      selectPanelText: selectPanelText ?? this.selectPanelText,
      switchFill: switchFill ?? this.switchFill,
      switchText: switchText ?? this.switchText,
      switchThumb: switchThumb ?? this.switchThumb,
      tabBorder: tabBorder ?? this.tabBorder,
      tabText: tabText ?? this.tabText,
      tableBorder: tableBorder ?? this.tableBorder,
      tableFill: tableFill ?? this.tableFill,
      toastFill: toastFill ?? this.toastFill,
      toastText: toastText ?? this.toastText,
      dividerFill: dividerFill ?? this.dividerFill,
      textButton: textButton ?? this.textButton,
      pickerCalendarText: pickerCalendarText ?? this.pickerCalendarText,
      pickerCalendarFill: pickerCalendarFill ?? this.pickerCalendarFill,
      pickerCalendarBorder: pickerCalendarBorder ?? this.pickerCalendarBorder,
      pickerSlotText: pickerSlotText ?? this.pickerSlotText,
      pickerSlotFill: pickerSlotFill ?? this.pickerSlotFill,
      tooltipFill: tooltipFill ?? this.tooltipFill,
      tooltipText: tooltipText ?? this.tooltipText,
      cardFill: cardFill ?? this.cardFill,
      cardBorder: cardBorder ?? this.cardBorder,
      autoCompleteText: autoCompleteText ?? this.autoCompleteText,
      modalFill: modalFill ?? this.modalFill,
      modalBorder: modalBorder ?? this.modalBorder,
      bannerFill: bannerFill ?? this.bannerFill,
      bookMarkFill: bookMarkFill ?? this.bookMarkFill,
      bookMarkText: bookMarkText ?? this.bookMarkText,
      likeFill: likeFill ?? this.likeFill,
      likeText: likeText ?? this.likeText,
      dropDownFill: dropDownFill ?? this.dropDownFill,
    );
  }

  @override
  AppComponentColors lerp(ThemeExtension<AppComponentColors>? other, double t) {
    if (other is! AppComponentColors) {
      return this;
    }

    return AppComponentColors(
      solidButtonFill: SolidButtonFillColors(
        primary: Color.lerp(solidButtonFill.primary, other.solidButtonFill.primary, t) ?? solidButtonFill.primary,
        secondary:
            Color.lerp(solidButtonFill.secondary, other.solidButtonFill.secondary, t) ?? solidButtonFill.secondary,
        tertiary: Color.lerp(solidButtonFill.tertiary, other.solidButtonFill.tertiary, t) ?? solidButtonFill.tertiary,
        warning: Color.lerp(solidButtonFill.warning, other.solidButtonFill.warning, t) ?? solidButtonFill.warning,
        disabled: Color.lerp(solidButtonFill.disabled, other.solidButtonFill.disabled, t) ?? solidButtonFill.disabled,
      ),
      solidButtonText: SolidButtonTextColors(
        primary: Color.lerp(solidButtonText.primary, other.solidButtonText.primary, t) ?? solidButtonText.primary,
        secondary:
            Color.lerp(solidButtonText.secondary, other.solidButtonText.secondary, t) ?? solidButtonText.secondary,
        tertiary: Color.lerp(solidButtonText.tertiary, other.solidButtonText.tertiary, t) ?? solidButtonText.tertiary,
        warning: Color.lerp(solidButtonText.warning, other.solidButtonText.warning, t) ?? solidButtonText.warning,
        disabled: Color.lerp(solidButtonText.disabled, other.solidButtonText.disabled, t) ?? solidButtonText.disabled,
      ),
      dataText: DataTextColors(
        primary: Color.lerp(dataText.primary, other.dataText.primary, t) ?? dataText.primary,
        secondary: Color.lerp(dataText.secondary, other.dataText.secondary, t) ?? dataText.secondary,
        tertiary: Color.lerp(dataText.tertiary, other.dataText.tertiary, t) ?? dataText.tertiary,
        disabled: Color.lerp(dataText.disabled, other.dataText.disabled, t) ?? dataText.disabled,
        warning: Color.lerp(dataText.warning, other.dataText.warning, t) ?? dataText.warning,
      ),
      badgeFill: BadgeFillColors(
        accent: Color.lerp(badgeFill.accent, other.badgeFill.accent, t) ?? badgeFill.accent,
        primary: Color.lerp(badgeFill.primary, other.badgeFill.primary, t) ?? badgeFill.primary,
        secondary: Color.lerp(badgeFill.secondary, other.badgeFill.secondary, t) ?? badgeFill.secondary,
        success: Color.lerp(badgeFill.success, other.badgeFill.success, t) ?? badgeFill.success,
        tertiary: Color.lerp(badgeFill.tertiary, other.badgeFill.tertiary, t) ?? badgeFill.tertiary,
        warning: Color.lerp(badgeFill.warning, other.badgeFill.warning, t) ?? badgeFill.warning,
      ),
      badgeText: BadgeTextColors(
        primary: Color.lerp(badgeText.primary, other.badgeText.primary, t) ?? badgeText.primary,
        secondary: Color.lerp(badgeText.secondary, other.badgeText.secondary, t) ?? badgeText.secondary,
        success: Color.lerp(badgeText.success, other.badgeText.success, t) ?? badgeText.success,
        tertiary: Color.lerp(badgeText.tertiary, other.badgeText.tertiary, t) ?? badgeText.tertiary,
        warning: Color.lerp(badgeText.warning, other.badgeText.warning, t) ?? badgeText.warning,
      ),
      categoryFill: CategoryFillColors(
        activated: Color.lerp(categoryFill.activated, other.categoryFill.activated, t) ?? categoryFill.activated,
      ),
      categoryText: CategoryTextColors(
        activated: Color.lerp(categoryText.activated, other.categoryText.activated, t) ?? categoryText.activated,
        base: Color.lerp(categoryText.base, other.categoryText.base, t) ?? categoryText.base,
        disabled: Color.lerp(categoryText.disabled, other.categoryText.disabled, t) ?? categoryText.disabled,
      ),
      chatBubbleFill: ChatBubbleFillColors(
        received: Color.lerp(chatBubbleFill.received, other.chatBubbleFill.received, t) ?? chatBubbleFill.received,
        sent: Color.lerp(chatBubbleFill.sent, other.chatBubbleFill.sent, t) ?? chatBubbleFill.sent,
      ),
      chatBubbleText: ChatBubbleTextColors(
        primary: Color.lerp(chatBubbleText.primary, other.chatBubbleText.primary, t) ?? chatBubbleText.primary,
        secondary: Color.lerp(chatBubbleText.secondary, other.chatBubbleText.secondary, t) ?? chatBubbleText.secondary,
        deleted: Color.lerp(chatBubbleText.deleted, other.chatBubbleText.deleted, t) ?? chatBubbleText.deleted,
      ),
      checkBoxBorder: CheckBoxBorderColors(
        base: Color.lerp(checkBoxBorder.base, other.checkBoxBorder.base, t) ?? checkBoxBorder.base,
        disabled: Color.lerp(checkBoxBorder.disabled, other.checkBoxBorder.disabled, t) ?? checkBoxBorder.disabled,
      ),
      checkBoxFill: CheckBoxFillColors(
        activated: Color.lerp(checkBoxFill.activated, other.checkBoxFill.activated, t) ?? checkBoxFill.activated,
        disabled: Color.lerp(checkBoxFill.disabled, other.checkBoxFill.disabled, t) ?? checkBoxFill.disabled,
      ),
      checkBoxIndicator: CheckBoxIndicatorColors(
        activated:
            Color.lerp(checkBoxIndicator.activated, other.checkBoxIndicator.activated, t) ??
            checkBoxIndicator.activated,
        disabled:
            Color.lerp(checkBoxIndicator.disabled, other.checkBoxIndicator.disabled, t) ?? checkBoxIndicator.disabled,
      ),
      checkBoxText: CheckBoxTextColors(
        activated: Color.lerp(checkBoxText.activated, other.checkBoxText.activated, t) ?? checkBoxText.activated,
        base: Color.lerp(checkBoxText.base, other.checkBoxText.base, t) ?? checkBoxText.base,
        disabled: Color.lerp(checkBoxText.disabled, other.checkBoxText.disabled, t) ?? checkBoxText.disabled,
      ),
      checkMarkFill: CheckMarkFillColors(
        activated: Color.lerp(checkMarkFill.activated, other.checkMarkFill.activated, t) ?? checkMarkFill.activated,
        base: Color.lerp(checkMarkFill.base, other.checkMarkFill.base, t) ?? checkMarkFill.base,
        disabled: Color.lerp(checkMarkFill.disabled, other.checkMarkFill.disabled, t) ?? checkMarkFill.disabled,
      ),
      checkMarkText: CheckMarkTextColors(
        activated: Color.lerp(checkMarkText.activated, other.checkMarkText.activated, t) ?? checkMarkText.activated,
        base: Color.lerp(checkMarkText.base, other.checkMarkText.base, t) ?? checkMarkText.base,
        disabled: Color.lerp(checkMarkText.disabled, other.checkMarkText.disabled, t) ?? checkMarkText.disabled,
      ),
      chipBorder: ChipBorderColors(
        tertiary: Color.lerp(chipBorder.tertiary, other.chipBorder.tertiary, t) ?? chipBorder.tertiary,
      ),
      chipFill: ChipFillColors(
        primary: Color.lerp(chipFill.primary, other.chipFill.primary, t) ?? chipFill.primary,
        secondary: Color.lerp(chipFill.secondary, other.chipFill.secondary, t) ?? chipFill.secondary,
      ),
      chipText: ChipTextColors(
        primary: Color.lerp(chipText.primary, other.chipText.primary, t) ?? chipText.primary,
        secondary: Color.lerp(chipText.secondary, other.chipText.secondary, t) ?? chipText.secondary,
        tertiary: Color.lerp(chipText.tertiary, other.chipText.tertiary, t) ?? chipText.tertiary,
      ),
      chipDeleteBorder: ChipDeleteBorderColors(
        tertiary:
            Color.lerp(chipDeleteBorder.tertiary, other.chipDeleteBorder.tertiary, t) ?? chipDeleteBorder.tertiary,
      ),
      chipDeleteFill: ChipDeleteFillColors(
        primary: Color.lerp(chipDeleteFill.primary, other.chipDeleteFill.primary, t) ?? chipDeleteFill.primary,
        secondary: Color.lerp(chipDeleteFill.secondary, other.chipDeleteFill.secondary, t) ?? chipDeleteFill.secondary,
      ),
      chipDeleteText: ChipDeleteTextColors(
        primary: Color.lerp(chipDeleteText.primary, other.chipDeleteText.primary, t) ?? chipDeleteText.primary,
        secondary: Color.lerp(chipDeleteText.secondary, other.chipDeleteText.secondary, t) ?? chipDeleteText.secondary,
        tertiary: Color.lerp(chipDeleteText.tertiary, other.chipDeleteText.tertiary, t) ?? chipDeleteText.tertiary,
      ),
      filterButtonBorder: FilterButtonBorderColors(
        activated:
            Color.lerp(filterButtonBorder.activated, other.filterButtonBorder.activated, t) ??
            filterButtonBorder.activated,
        base: Color.lerp(filterButtonBorder.base, other.filterButtonBorder.base, t) ?? filterButtonBorder.base,
        disabled:
            Color.lerp(filterButtonBorder.disabled, other.filterButtonBorder.disabled, t) ??
            filterButtonBorder.disabled,
        expand: Color.lerp(filterButtonBorder.expand, other.filterButtonBorder.expand, t) ?? filterButtonBorder.expand,
      ),
      filterButtonText: FilterButtonTextColors(
        activated:
            Color.lerp(filterButtonText.activated, other.filterButtonText.activated, t) ?? filterButtonText.activated,
        base: Color.lerp(filterButtonText.base, other.filterButtonText.base, t) ?? filterButtonText.base,
        disabled:
            Color.lerp(filterButtonText.disabled, other.filterButtonText.disabled, t) ?? filterButtonText.disabled,
        expand: Color.lerp(filterButtonText.expand, other.filterButtonText.expand, t) ?? filterButtonText.expand,
      ),
      inputBorder: InputBorderColors(
        base: Color.lerp(inputBorder.base, other.inputBorder.base, t) ?? inputBorder.base,
        disabled: Color.lerp(inputBorder.disabled, other.inputBorder.disabled, t) ?? inputBorder.disabled,
        focus: Color.lerp(inputBorder.focus, other.inputBorder.focus, t) ?? inputBorder.focus,
        tab: Color.lerp(inputBorder.tab, other.inputBorder.tab, t) ?? inputBorder.tab,
        warning: Color.lerp(inputBorder.warning, other.inputBorder.warning, t) ?? inputBorder.warning,
      ),
      inputCaret: InputCaretColors(base: Color.lerp(inputCaret.base, other.inputCaret.base, t) ?? inputCaret.base),
      inputFill: InputFillColors(
        base: Color.lerp(inputFill.base, other.inputFill.base, t) ?? inputFill.base,
        disabled: Color.lerp(inputFill.disabled, other.inputFill.disabled, t) ?? inputFill.disabled,
      ),
      inputText: InputTextColors(
        disabled: Color.lerp(inputText.disabled, other.inputText.disabled, t) ?? inputText.disabled,
        primary: Color.lerp(inputText.primary, other.inputText.primary, t) ?? inputText.primary,
        secondary: Color.lerp(inputText.secondary, other.inputText.secondary, t) ?? inputText.secondary,
        tertiary: Color.lerp(inputText.tertiary, other.inputText.tertiary, t) ?? inputText.tertiary,
        warning: Color.lerp(inputText.warning, other.inputText.warning, t) ?? inputText.warning,
      ),
      navigationText: NavigationTextColors(
        base: Color.lerp(navigationText.base, other.navigationText.base, t) ?? navigationText.base,
        disabled: Color.lerp(navigationText.disabled, other.navigationText.disabled, t) ?? navigationText.disabled,
      ),
      outlinedButtonBorder: OutlinedButtonBorderColors(
        disabled:
            Color.lerp(outlinedButtonBorder.disabled, other.outlinedButtonBorder.disabled, t) ??
            outlinedButtonBorder.disabled,
        primary:
            Color.lerp(outlinedButtonBorder.primary, other.outlinedButtonBorder.primary, t) ??
            outlinedButtonBorder.primary,
        secondary:
            Color.lerp(outlinedButtonBorder.secondary, other.outlinedButtonBorder.secondary, t) ??
            outlinedButtonBorder.secondary,
        warning:
            Color.lerp(outlinedButtonBorder.warning, other.outlinedButtonBorder.warning, t) ??
            outlinedButtonBorder.warning,
      ),
      outlinedButtonFill: OutlinedButtonFillColors(
        base: Color.lerp(outlinedButtonFill.base, other.outlinedButtonFill.base, t) ?? outlinedButtonFill.base,
      ),
      outlinedButtonText: OutlinedButtonTextColors(
        disabled:
            Color.lerp(outlinedButtonText.disabled, other.outlinedButtonText.disabled, t) ??
            outlinedButtonText.disabled,
        primary:
            Color.lerp(outlinedButtonText.primary, other.outlinedButtonText.primary, t) ?? outlinedButtonText.primary,
        secondary:
            Color.lerp(outlinedButtonText.secondary, other.outlinedButtonText.secondary, t) ??
            outlinedButtonText.secondary,
        warning:
            Color.lerp(outlinedButtonText.warning, other.outlinedButtonText.warning, t) ?? outlinedButtonText.warning,
      ),
      radioBorder: RadioBorderColors(
        base: Color.lerp(radioBorder.base, other.radioBorder.base, t) ?? radioBorder.base,
        disabled: Color.lerp(radioBorder.disabled, other.radioBorder.disabled, t) ?? radioBorder.disabled,
      ),
      radioDot: RadioDotColors(dot: Color.lerp(radioDot.dot, other.radioDot.dot, t) ?? radioDot.dot),
      radioFill: RadioFillColors(
        activated: Color.lerp(radioFill.activated, other.radioFill.activated, t) ?? radioFill.activated,
      ),
      radioText: RadioTextColors(
        activated: Color.lerp(radioText.activated, other.radioText.activated, t) ?? radioText.activated,
        base: Color.lerp(radioText.base, other.radioText.base, t) ?? radioText.base,
        disabled: Color.lerp(radioText.disabled, other.radioText.disabled, t) ?? radioText.disabled,
      ),
      searchActionBorder: SearchActionBorderColors(
        base: Color.lerp(searchActionBorder.base, other.searchActionBorder.base, t) ?? searchActionBorder.base,
        disabled:
            Color.lerp(searchActionBorder.disabled, other.searchActionBorder.disabled, t) ??
            searchActionBorder.disabled,
      ),
      searchActionFill: SearchActionFillColors(
        disabled:
            Color.lerp(searchActionFill.disabled, other.searchActionFill.disabled, t) ?? searchActionFill.disabled,
      ),
      searchActionText: SearchActionTextColors(
        base: Color.lerp(searchActionText.base, other.searchActionText.base, t) ?? searchActionText.base,
        disabled:
            Color.lerp(searchActionText.disabled, other.searchActionText.disabled, t) ?? searchActionText.disabled,
      ),
      segmentedControlFill: SegmentedControlFillColors(
        bg: Color.lerp(segmentedControlFill.bg, other.segmentedControlFill.bg, t) ?? segmentedControlFill.bg,
      ),
      segmentedControlKnob: SegmentedControlKnobColors(
        activated:
            Color.lerp(segmentedControlKnob.activated, other.segmentedControlKnob.activated, t) ??
            segmentedControlKnob.activated,
      ),
      segmentedControlText: SegmentedControlTextColors(
        activated:
            Color.lerp(segmentedControlText.activated, other.segmentedControlText.activated, t) ??
            segmentedControlText.activated,
        base: Color.lerp(segmentedControlText.base, other.segmentedControlText.base, t) ?? segmentedControlText.base,
        disabled:
            Color.lerp(segmentedControlText.disabled, other.segmentedControlText.disabled, t) ??
            segmentedControlText.disabled,
      ),
      selectPanelBorder: SelectPanelBorderColors(
        base: Color.lerp(selectPanelBorder.base, other.selectPanelBorder.base, t) ?? selectPanelBorder.base,
        disabled:
            Color.lerp(selectPanelBorder.disabled, other.selectPanelBorder.disabled, t) ?? selectPanelBorder.disabled,
        selected:
            Color.lerp(selectPanelBorder.selected, other.selectPanelBorder.selected, t) ?? selectPanelBorder.selected,
        tab: Color.lerp(selectPanelBorder.tab, other.selectPanelBorder.tab, t) ?? selectPanelBorder.tab,
      ),
      selectPanelFill: SelectPanelFillColors(
        selected: Color.lerp(selectPanelFill.selected, other.selectPanelFill.selected, t) ?? selectPanelFill.selected,
      ),
      selectPanelText: SelectPanelTextColors(
        base: Color.lerp(selectPanelText.base, other.selectPanelText.base, t) ?? selectPanelText.base,
        disabled: Color.lerp(selectPanelText.disabled, other.selectPanelText.disabled, t) ?? selectPanelText.disabled,
        selected: Color.lerp(selectPanelText.selected, other.selectPanelText.selected, t) ?? selectPanelText.selected,
        tab: Color.lerp(selectPanelText.tab, other.selectPanelText.tab, t) ?? selectPanelText.tab,
      ),
      switchFill: SwitchFillColors(
        activated: Color.lerp(switchFill.activated, other.switchFill.activated, t) ?? switchFill.activated,
        base: Color.lerp(switchFill.base, other.switchFill.base, t) ?? switchFill.base,
        disabled: Color.lerp(switchFill.disabled, other.switchFill.disabled, t) ?? switchFill.disabled,
      ),
      switchText: SwitchTextColors(
        activated: Color.lerp(switchText.activated, other.switchText.activated, t) ?? switchText.activated,
        base: Color.lerp(switchText.base, other.switchText.base, t) ?? switchText.base,
        disabled: Color.lerp(switchText.disabled, other.switchText.disabled, t) ?? switchText.disabled,
      ),
      switchThumb: SwitchThumbColors(
        base: Color.lerp(switchThumb.base, other.switchThumb.base, t) ?? switchThumb.base,
        activated: Color.lerp(switchThumb.activated, other.switchThumb.activated, t) ?? switchThumb.activated,
        disabled: Color.lerp(switchThumb.disabled, other.switchThumb.disabled, t) ?? switchThumb.disabled,
      ),
      tabBorder: TabBorderColors(
        base: Color.lerp(tabBorder.base, other.tabBorder.base, t) ?? tabBorder.base,
        activated: Color.lerp(tabBorder.activated, other.tabBorder.activated, t) ?? tabBorder.activated,
      ),
      tabText: TabTextColors(
        activated: Color.lerp(tabText.activated, other.tabText.activated, t) ?? tabText.activated,
        base: Color.lerp(tabText.base, other.tabText.base, t) ?? tabText.base,
      ),
      tableBorder: TableBorderColors(
        cell: Color.lerp(tableBorder.cell, other.tableBorder.cell, t) ?? tableBorder.cell,
        tableHeader: Color.lerp(tableBorder.tableHeader, other.tableBorder.tableHeader, t) ?? tableBorder.tableHeader,
      ),
      tableFill: TableFillColors(hover: Color.lerp(tableFill.hover, other.tableFill.hover, t) ?? tableFill.hover),
      toastFill: ToastFillColors(
        primary: Color.lerp(toastFill.primary, other.toastFill.primary, t) ?? toastFill.primary,
      ),
      toastText: ToastTextColors(
        primary: Color.lerp(toastText.primary, other.toastText.primary, t) ?? toastText.primary,
      ),
      dividerFill: DividerFillColors(base: Color.lerp(dividerFill.base, other.dividerFill.base, t) ?? dividerFill.base),
      textButton: TextButtonColors(
        primary: Color.lerp(textButton.primary, other.textButton.primary, t) ?? textButton.primary,
        secondary: Color.lerp(textButton.secondary, other.textButton.secondary, t) ?? textButton.secondary,
        disabled: Color.lerp(textButton.disabled, other.textButton.disabled, t) ?? textButton.disabled,
      ),
      pickerCalendarText: PickerCalendarTextColors(
        primary:
            Color.lerp(pickerCalendarText.primary, other.pickerCalendarText.primary, t) ?? pickerCalendarText.primary,
        secondary:
            Color.lerp(pickerCalendarText.secondary, other.pickerCalendarText.secondary, t) ??
            pickerCalendarText.secondary,
        inverse:
            Color.lerp(pickerCalendarText.inverse, other.pickerCalendarText.inverse, t) ?? pickerCalendarText.inverse,
        disabled:
            Color.lerp(pickerCalendarText.disabled, other.pickerCalendarText.disabled, t) ??
            pickerCalendarText.disabled,
      ),
      pickerCalendarFill: PickerCalendarFillColors(
        selected:
            Color.lerp(pickerCalendarFill.selected, other.pickerCalendarFill.selected, t) ??
            pickerCalendarFill.selected,
        tab: Color.lerp(pickerCalendarFill.tab, other.pickerCalendarFill.tab, t) ?? pickerCalendarFill.tab,
        range: Color.lerp(pickerCalendarFill.range, other.pickerCalendarFill.range, t) ?? pickerCalendarFill.range,
      ),
      pickerCalendarBorder: PickerCalendarBorderColors(
        base: Color.lerp(pickerCalendarBorder.base, other.pickerCalendarBorder.base, t) ?? pickerCalendarBorder.base,
        disabled:
            Color.lerp(pickerCalendarBorder.disabled, other.pickerCalendarBorder.disabled, t) ??
            pickerCalendarBorder.disabled,
      ),
      pickerSlotText: PickerSlotTextColors(
        primary: Color.lerp(pickerSlotText.primary, other.pickerSlotText.primary, t) ?? pickerSlotText.primary,
        secondary: Color.lerp(pickerSlotText.secondary, other.pickerSlotText.secondary, t) ?? pickerSlotText.secondary,
        disabled: Color.lerp(pickerSlotText.disabled, other.pickerSlotText.disabled, t) ?? pickerSlotText.disabled,
      ),
      pickerSlotFill: PickerSlotFillColors(
        selected: Color.lerp(pickerSlotFill.selected, other.pickerSlotFill.selected, t) ?? pickerSlotFill.selected,
      ),
      tooltipFill: TooltipFillColors(base: Color.lerp(tooltipFill.base, other.tooltipFill.base, t) ?? tooltipFill.base),
      tooltipText: TooltipTextColors(base: Color.lerp(tooltipText.base, other.tooltipText.base, t) ?? tooltipText.base),
      cardFill: CardFillColors(base: Color.lerp(cardFill.base, other.cardFill.base, t) ?? cardFill.base),
      cardBorder: CardBorderColors(base: Color.lerp(cardBorder.base, other.cardBorder.base, t) ?? cardBorder.base),
      autoCompleteText: AutoCompleteTextColors(
        keyword: Color.lerp(autoCompleteText.keyword, other.autoCompleteText.keyword, t) ?? autoCompleteText.keyword,
      ),
      modalFill: ModalFillColors(base: Color.lerp(modalFill.base, other.modalFill.base, t) ?? modalFill.base),
      modalBorder: ModalBorderColors(base: Color.lerp(modalBorder.base, other.modalBorder.base, t) ?? modalBorder.base),
      bannerFill: BannerFillColors(
        base: Color.lerp(bannerFill.base, other.bannerFill.base, t) ?? bannerFill.base,
        brand: Color.lerp(bannerFill.brand, other.bannerFill.brand, t) ?? bannerFill.brand,
        warning: Color.lerp(bannerFill.warning, other.bannerFill.warning, t) ?? bannerFill.warning,
      ),
      bookMarkFill: BookMarkFillColors(
        base: Color.lerp(bookMarkFill.base, other.bookMarkFill.base, t) ?? bookMarkFill.base,
        activated: Color.lerp(bookMarkFill.activated, other.bookMarkFill.activated, t) ?? bookMarkFill.activated,
        disabled: Color.lerp(bookMarkFill.disabled, other.bookMarkFill.disabled, t) ?? bookMarkFill.disabled,
      ),
      bookMarkText: BookMarkTextColors(
        base: Color.lerp(bookMarkText.base, other.bookMarkText.base, t) ?? bookMarkText.base,
        activated: Color.lerp(bookMarkText.activated, other.bookMarkText.activated, t) ?? bookMarkText.activated,
        disabled: Color.lerp(bookMarkText.disabled, other.bookMarkText.disabled, t) ?? bookMarkText.disabled,
      ),
      likeFill: LikeFillColors(
        base: Color.lerp(likeFill.base, other.likeFill.base, t) ?? likeFill.base,
        activated: Color.lerp(likeFill.activated, other.likeFill.activated, t) ?? likeFill.activated,
        disabled: Color.lerp(likeFill.disabled, other.likeFill.disabled, t) ?? likeFill.disabled,
      ),
      likeText: LikeTextColors(
        base: Color.lerp(likeText.base, other.likeText.base, t) ?? likeText.base,
        activated: Color.lerp(likeText.activated, other.likeText.activated, t) ?? likeText.activated,
        disabled: Color.lerp(likeText.disabled, other.likeText.disabled, t) ?? likeText.disabled,
      ),
      dropDownFill: DropDownFillColors(
        base: Color.lerp(dropDownFill.base, other.dropDownFill.base, t) ?? dropDownFill.base,
        disabled: Color.lerp(dropDownFill.disabled, other.dropDownFill.disabled, t) ?? dropDownFill.disabled,
      ),
    );
  }
}
