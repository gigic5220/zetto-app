// import 'package:flutter/widgets.dart';

// import 'padding_setter.dart';

// class PaddingGetter extends StatelessWidget {
//   const PaddingGetter({
//     super.key,
//     this.isLeftPadding = false,
//     this.isRightPadding = false,
//     this.isTopPadding = false,
//     this.isBottomPadding = false,
//     required this.child,
//   });

//   final bool isLeftPadding;
//   final bool isRightPadding;
//   final bool isTopPadding;
//   final bool isBottomPadding;
//   final Widget child;

//   @override
//   Widget build(BuildContext context) {
//     final padding = PaddingSetter.of(context);

//     if (padding == null) return child;

//     return Padding(
//       padding: padding.copyWith(
//         left: isLeftPadding ? null : 0,
//         right: isRightPadding ? null : 0,
//         top: isTopPadding ? null : 0,
//         bottom: isBottomPadding ? null : 0,
//       ),
//       child: child,
//     );
//   }
// }
