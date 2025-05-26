import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NgasWebviewScreen extends StatefulWidget {
  final String url;
  const NgasWebviewScreen({super.key, required this.url});

  @override
  State<NgasWebviewScreen> createState() => _NgasWebviewScreenState();
}

class _NgasWebviewScreenState extends State<NgasWebviewScreen> {
  late final WebViewController _controller;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            // Linear progress bar
            _isLoading ? const LinearProgressIndicator() : const SizedBox(),

            // WebView
            Expanded(
              child: WebViewWidget(controller: _controller),
            ),
          ],
        ),
      ),
    );
  }
}