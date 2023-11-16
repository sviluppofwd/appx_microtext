import 'dart:io';
import 'package:appx_microtex/webViewPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'customColors.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Microtex',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Microtex'),
        ),
        body: WebView(
          initialUrl: 'https://www.be-mood.it/app-giacenze.php',
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