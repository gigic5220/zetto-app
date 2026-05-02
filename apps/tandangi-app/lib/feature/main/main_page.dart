import 'package:design_system/components/ions.dart';
import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tandangi/gen/assets.gen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _moveAnimation;

  Animation<double> createMoveAnimation(double begin, double end) {
    return Tween<double>(begin: begin, end: end).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeOutQuad),
    );
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _moveAnimation = createMoveAnimation(0, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) {
          return Transform(
            transform: Matrix4.translationValues(_moveAnimation.value, 0, 0),
            child: widget.navigationShell,
          );
        },
      ),
      bottomNavigationBar: SizedBox(
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _onTap(0);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      DSWrapper(
                        uri: Assets.svgs.icHomeFill,
                        view: WrapperView.fix16,
                        svgColor: widget.navigationShell.currentIndex == 0
                            ? context.semanticColors.textPrimary
                            : context.semanticColors.textTertiary,
                      ),
                      Text(
                        '홈',
                        style: context.textTheme.buttonSSemiBold.copyWith(
                          color: widget.navigationShell.currentIndex == 0
                              ? context.semanticColors.textPrimary
                              : context.semanticColors.textTertiary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _onTap(1);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      DSWrapper(
                        uri: Assets.svgs.icCalendarFill,
                        view: WrapperView.fix16,
                        svgColor: widget.navigationShell.currentIndex == 1
                            ? context.semanticColors.textPrimary
                            : context.semanticColors.textTertiary,
                      ),
                      Text(
                        '전체 기록',
                        style: context.textTheme.buttonSSemiBold.copyWith(
                          color: widget.navigationShell.currentIndex == 1
                              ? context.semanticColors.textPrimary
                              : context.semanticColors.textTertiary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  _onTap(2);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 4,
                    children: [
                      DSWrapper(
                        uri: Assets.svgs.icProfileFill,
                        view: WrapperView.fix16,
                        svgColor: widget.navigationShell.currentIndex == 2
                            ? context.semanticColors.textPrimary
                            : context.semanticColors.textTertiary,
                      ),
                      Text(
                        '마이',
                        style: context.textTheme.buttonSSemiBold.copyWith(
                          color: widget.navigationShell.currentIndex == 2
                              ? context.semanticColors.textPrimary
                              : context.semanticColors.textTertiary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: '탭1'),
      //     BottomNavigationBarItem(icon: Icon(Icons.folder_open), label: '탭2'),
      //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: '탭3'),
      //   ],
      //   currentIndex: widget.navigationShell.currentIndex,
      //   onTap: (index) {
      //     final currentIndex = widget.navigationShell.currentIndex;

      //     if (currentIndex == index) return;

      //     if (currentIndex < index) {
      //       _moveAnimation = createMoveAnimation(5, 0);
      //     } else {
      //       _moveAnimation = createMoveAnimation(-5, 0);
      //     }

      //     _animationController.reset();
      //     _animationController.forward();

      //     widget.navigationShell.goBranch(index);
      //   },
      // ),
    );
  }

  void _onTap(int index) {
    final currentIndex = widget.navigationShell.currentIndex;

    if (currentIndex == index) return;

    if (currentIndex < index) {
      _moveAnimation = createMoveAnimation(5, 0);
    } else {
      _moveAnimation = createMoveAnimation(-5, 0);
    }

    _animationController.reset();
    _animationController.forward();

    widget.navigationShell.goBranch(index);
  }
}
