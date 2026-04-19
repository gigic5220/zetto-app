import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '탭1'),
          BottomNavigationBarItem(icon: Icon(Icons.folder_open), label: '탭2'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: '탭3'),
        ],
        currentIndex: widget.navigationShell.currentIndex,
        onTap: (index) {
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
        },
      ),
    );
  }
}
