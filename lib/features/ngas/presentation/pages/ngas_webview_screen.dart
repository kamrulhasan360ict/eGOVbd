import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class NgasWebviewScreen extends StatefulWidget {
  final String url;
  final String title;
  const NgasWebviewScreen({super.key, required this.url, required this.title});
  @override
  State<NgasWebviewScreen> createState() => _NgasWebviewScreenState();
}
class _NgasWebviewScreenState extends State<NgasWebviewScreen> {
  late final WebViewController _controller;
  bool isPageLoaded = false;
  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (url) {
            setState(() {
              isPageLoaded = false;
            });
          },
          onPageFinished: (url) {
            setState(() {
              isPageLoaded = true;
            });
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          WebViewWidget(controller: _controller),
          if (!isPageLoaded)
            Container(
              color: Colors.white,
              child: const Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            ),
        ],
      ),
    );
  }
}