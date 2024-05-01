import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late InAppWebViewController controller;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: InAppWebView(
            initialUrlRequest:
                URLRequest(url: WebUri("https://www.shothik.ai/paraphrase/")),
            initialSettings: InAppWebViewSettings(
              javaScriptEnabled: true,
              userAgent:
                  'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Mobile Safari/537.36',
            ),
            onWebViewCreated: (InAppWebViewController webViewController) {
              controller = webViewController;
            },
          ),
        ),
      ),
    );
  }
}
