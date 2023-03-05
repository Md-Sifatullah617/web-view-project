import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
} 

class _HomePageState extends State<HomePage> {
  WebViewController? _controller;

  @override
  Widget build(BuildContext context) {
    return WebView(
       initialUrl: 'https://www.google.com',
      onWebViewCreated: (WebViewController controller) {
        _controller = controller;
      },
    );
  }
}