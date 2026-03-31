import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../components/ions.dart';
import '../../../resources/resources.dart';
import '../../extension/context_extension.dart';
import '../../foundations/component/colors/generated_component_colors.dart';

enum DSChatBubbleType { received, sent }

class DSChatBubble extends StatefulWidget {
  const DSChatBubble({
    super.key,
    required this.type,
    required this.message,
    required this.time,
    this.imageUri,
    this.name,
    this.isLoading = false,
    this.isContinued = false,
    this.isDeleted = false,
    this.isHug = true,
    this.maxLines = 5,
  });

  final DSChatBubbleType type;
  final String message;
  final DateTime time;
  final String? imageUri;
  final String? name;
  final bool isLoading;
  final bool isContinued;
  final bool isDeleted;
  final bool isHug;
  final int maxLines;

  @override
  State<DSChatBubble> createState() => _DSChatBubbleState();
}

class _DSChatBubbleState extends State<DSChatBubble> {
  late ChatBubbleTextColors chatBubbleTextColors;
  late ChatBubbleFillColors chatBubbleFillColors;

  late TextStyle nameTextStyle;
  late TextStyle messageTextStyle;
  late TextStyle timeTextStyle;

  late Color nameTextColor;
  late Color messageTextColor;
  late Color timeTextColor;
  late Color backgroundColor;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _calculate();
  }

  @override
  void didUpdateWidget(covariant DSChatBubble oldWidget) {
    super.didUpdateWidget(oldWidget);

    _calculate();
  }

  void _calculate() {
    chatBubbleTextColors = context.componentColors.chatBubbleText;
    chatBubbleFillColors = context.componentColors.chatBubbleFill;

    nameTextColor = chatBubbleTextColors.primary;
    messageTextColor = widget.isDeleted ? chatBubbleTextColors.deleted : chatBubbleTextColors.primary;
    timeTextColor = chatBubbleTextColors.secondary;

    nameTextStyle = context.textTheme.labelMMedium;
    messageTextStyle = context.textTheme.bodyLRegular;
    timeTextStyle = context.textTheme.labelSMedium;

    backgroundColor = widget.type == .received ? chatBubbleFillColors.received : chatBubbleFillColors.sent;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .fromLTRB(
        widget.type == .received ? 0 : context.componentPadding.max,
        context.componentPadding.small,
        widget.type == .received ? context.componentPadding.xxxLarge : 0,
        context.componentPadding.small,
      ),
      child: Row(
        crossAxisAlignment: .start,
        mainAxisAlignment: widget.type == .received ? .start : .end,
        spacing: context.componentGap.small,
        children: [
          if (widget.type == .received && widget.imageUri?.isNotEmpty == true) ...[
            widget.isContinued
                ? SizedBox(width: 32, height: 32)
                : DSWrapper(uri: widget.imageUri!, view: WrapperView.image32(context)),
          ],
          Flexible(
            child: Column(
              mainAxisSize: .min,
              spacing: context.componentGap.xxSmall,
              crossAxisAlignment: .start,
              children: [
                if (widget.isContinued == false && widget.type == .received && widget.name?.isNotEmpty == true)
                  Text(widget.name!, style: nameTextStyle.copyWith(color: nameTextColor)),
                Row(
                  mainAxisSize: .min,
                  crossAxisAlignment: .end,
                  spacing: context.componentGap.xxSmall,
                  children: [
                    if (widget.type == .sent)
                      Text(
                        DateFormat('a hh:mm', 'ko').format(widget.time),
                        style: timeTextStyle.copyWith(color: timeTextColor),
                      ),
                    Flexible(
                      child: Container(
                        width: widget.isHug ? null : double.infinity,
                        padding: .symmetric(
                          vertical: context.componentPadding.xLarge,
                          horizontal: context.componentPadding.xxLarge,
                        ),
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: .circular(widget.type == .received ? 0 : context.componentRadius.large),
                            topRight: .circular(widget.type == .received ? context.componentRadius.large : 0),
                            bottomLeft: .circular(context.componentRadius.large),
                            bottomRight: .circular(context.componentRadius.large),
                          ),
                        ),
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            final textPainter = TextPainter(
                              text: TextSpan(
                                text: widget.message,
                                style: messageTextStyle.copyWith(color: messageTextColor),
                              ),
                              maxLines: widget.maxLines,
                              textDirection: Directionality.of(context),
                            )..layout(maxWidth: constraints.maxWidth - context.componentPadding.xxLarge * 2);
                            final isMessageOverflowed = textPainter.didExceedMaxLines;

                            return Column(
                              mainAxisSize: .min,
                              crossAxisAlignment: .start,
                              children: [
                                Text(
                                  widget.isDeleted ? '삭제된 메세지 입니다.' : widget.message,
                                  style: messageTextStyle.copyWith(color: messageTextColor),
                                  maxLines: widget.maxLines,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                if (isMessageOverflowed) ...[
                                  SizedBox(height: context.componentGap.large),
                                  Row(
                                    mainAxisAlignment: .spaceBetween,
                                    children: [
                                      Text(
                                        '전체보기',
                                        style: context.textTheme.bodyMMedium.copyWith(
                                          color: chatBubbleTextColors.primary,
                                        ),
                                      ),
                                      DSWrapper(
                                        uri: Svgs.icChevronRight,
                                        view: WrapperView.fix12,
                                        svgColor: chatBubbleTextColors.secondary,
                                      ),
                                    ],
                                  ),
                                ],
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    if (widget.type == .received)
                      Text(
                        DateFormat('a hh:mm', 'ko').format(widget.time),
                        style: timeTextStyle.copyWith(color: timeTextColor),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
