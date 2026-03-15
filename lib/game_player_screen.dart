import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GamePlayerScreen extends StatefulWidget {
  const GamePlayerScreen({
    super.key,
    this.playUrl,
    this.title,
  });

  final String? playUrl;
  final String? title;

  @override
  State<GamePlayerScreen> createState() => _GamePlayerScreenState();
}

class _GamePlayerScreenState extends State<GamePlayerScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    final url = widget.playUrl ?? 'https://play2048.co/';
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title ?? 'Play'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
