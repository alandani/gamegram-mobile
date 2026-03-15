import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GamePlayerScreen extends StatefulWidget {
  /// Optional asset key for the game to load (e.g. 'assets/warioware/game.html').
  /// Defaults to the built-in WARIO WARE 3D micro-game.
  const GamePlayerScreen({super.key, this.gameAsset = 'assets/warioware/game.html'});

  final String gameAsset;

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
      ..setBackgroundColor(const Color(0xFF000000))
      ..loadFlutterAsset(widget.gameAsset);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play'),
        backgroundColor: const Color(0xFF150826),
        foregroundColor: Colors.white,
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}

