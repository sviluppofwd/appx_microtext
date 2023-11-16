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
      title: 'Microtex',
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: WebView(
          initialUrl: 'https://www.be-mood.it/app-giacenze.php',
          onPageStarted: (url) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageFinished: (url) {
            setState(() {
              _isLoading = false;
              _title = "Microtex";
            });
          },
        ),
      ),
    );
  }
}

/*
void main() {
  runApp(const WebViewPage());
}

*/