import 'dart:io';

import 'package:design_system/extenstion.dart';
import 'package:flutter/material.dart';
import 'package:inspector/inspector.dart';

import 'dev_tools.dart';
import 'util/shake_detector.dart';
import 'view/dev_tools_page.dart';

class DevToolsOverlay extends StatefulWidget {
  const DevToolsOverlay({super.key, required this.navigatorKey, required this.child, this.initialShowDevTools = true});

  final GlobalKey<NavigatorState> navigatorKey;
  final Widget child;
  final bool initialShowDevTools;

  @override
  State<DevToolsOverlay> createState() => _DevToolsOverlayState();
}

class _DevToolsOverlayState extends State<DevToolsOverlay> {
  late final DevTools devTools;

  // Dev tools state
  final GlobalKey _devToolsKey = GlobalKey();
  Size? _devToolsSize;

  bool _isShowDevTools = false;
  bool _isDragging = false;
  double _toolsX = 16;
  double _toolsY = 100;

  // Shake detection
  ShakeDetector? _shakeDetector;

  @override
  void initState() {
    super.initState();
    devTools = DevTools(navigatorKey: widget.navigatorKey);
    _isShowDevTools = widget.initialShowDevTools;

    if (Platform.isAndroid || Platform.isIOS) {
      _shakeDetector = ShakeDetector.autoStart(
        onPhoneShake: _showDevTools,
        shakeThresholdGravity: 1.4,
        shakeSlopTimeMS: 200,
        shakeCountResetTime: 3000,
        shakeDetectCount: 3,
      );
    }

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final screenSize = MediaQuery.sizeOf(context);

      _devToolsSize = _devToolsKey.currentContext?.size;
      setState(() {
        _toolsX = screenSize.width - (_devToolsSize?.width ?? 0) - 16;
        _toolsY = screenSize.height - (_devToolsSize?.height ?? 0) - 100;
      });
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _shakeDetector?.dispose();
    super.dispose();
  }

  void _showDevTools() {
    if (_isShowDevTools) return;

    setState(() {
      _isShowDevTools = true;
    });
  }

  void _hideDevTools() {
    setState(() {
      _isShowDevTools = false;
    });
  }

  void _toggleShowDevTools() {
    setState(() {
      _isShowDevTools = !_isShowDevTools;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ListenableBuilder(
            listenable: devTools,
            builder: (context, child) {
              return Inspector(isEnabled: devTools.isShowInspector, child: widget.child);
            },
          ),
        ),
        if (_isShowDevTools)
          AnimatedPositioned(
            left: _toolsX,
            top: _toolsY,
            duration: _isDragging ? Duration.zero : const Duration(milliseconds: 200),
            child: _buildDevTools(),
          ),
      ],
    );
  }

  Widget _buildDevTools() {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onPanStart: (details) => setState(() => _isDragging = true),
      onPanUpdate: (details) {
        setState(() {
          _toolsX += details.delta.dx;
          _toolsY += details.delta.dy;
        });
      },
      onPanEnd: (details) => setState(() {
        // 화면 중앙을 기준으로 가장 가까운 양 끝으로 이동시키기
        final screenSize = MediaQuery.sizeOf(context);
        final centerX = screenSize.width / 2;
        final isLeft = _toolsX < centerX;
        if (isLeft) {
          _toolsX = 16;
        } else {
          _toolsX = screenSize.width - (_devToolsSize?.width ?? 0) - 16;
        }

        _isDragging = false;
      }),
      child: AnimatedScale(
        duration: Duration(milliseconds: 100),
        scale: _isDragging ? 0.86 : 1,
        child: Column(
          key: _devToolsKey,
          spacing: 8,
          children: [
            Builder(
              builder: (context) {
                return GestureDetector(
                  onTap: () async {
                    if (devTools.context == null) return;

                    _hideDevTools();
                    await Navigator.push(
                      devTools.context!,
                      MaterialPageRoute(builder: (context) => DevToolsPage(devTools: devTools)),
                    );
                    _showDevTools();
                  },
                  child: Container(
                    padding: .all(12),
                    decoration: BoxDecoration(color: context.semanticColors.brandPrimary, borderRadius: .circular(12)),
                    child: Icon(Icons.bug_report_sharp, color: context.semanticColors.textInverse),
                  ),
                );
              },
            ),
            GestureDetector(
              onTap: _toggleShowDevTools,
              child: Container(
                padding: .all(4),
                decoration: BoxDecoration(
                  border: Border.all(color: context.semanticColors.accentRed),
                  borderRadius: .circular(8),
                ),
                child: Icon(Icons.close, color: context.semanticColors.accentRed),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
