import 'package:design_system/components/molecules.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({super.key, required this.url, this.title});

  static const routeName = 'web-view';
  final String? title;
  final String url;

  @override
  Widget build(BuildContext context) {
    final webViewController = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..loadRequest(Uri.parse(url));
    return Scaffold(
      appBar: DSAppBar.title(text: title ?? ''),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0),
        child: WebViewWidget(controller: webViewController),
      ),
    );
  }
}
