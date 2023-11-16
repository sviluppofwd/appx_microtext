import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  @override
  _WebViewPage createState() => _WebViewPage();
}

class _WebViewPage extends State<WebViewPage> {
  bool _isLoading = true;
  String _title = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: WebView(
        initialUrl: 'https://www.microtexcottonclub.it/app-giacenze.php',
        javascriptMode: JavascriptMode
            .unrestricted, // This is needed to enable CSS injection
        onWebViewCreated: (webView) {
          // ignore: deprecated_member_use
          webView.evaluateJavascript('''
              body {
                overflow: hidden;
              }
            ''');
        },
      ),
    );
  }
}
