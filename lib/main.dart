import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoading = true;
  String _title = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Microtext',
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: WebView(
          initialUrl: 'https://www.be-mood.it/app-giacenze.php',
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
      ),
    );
  }
}
