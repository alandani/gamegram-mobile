import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GamePlayerScreen extends StatefulWidget {
  const GamePlayerScreen({super.key});

  @override
  State<GamePlayerScreen> createState() => _GamePlayerScreenState();
}

class _GamePlayerScreenState extends State<GamePlayerScreen> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://play2048.co/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Play')),
      body: WebViewWidget(controller: _controller),
    );
  }
}

