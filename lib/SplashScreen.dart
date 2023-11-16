import 'dart:async';

import 'package:appx_microtex/webViewPage.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  bool _isLoading = true;
  String _title = '';
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void setTimer() async {
    setState(() {
      _timer = Timer.periodic(Duration(seconds: 2), (timer) {
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => WebViewPage()), (route) => false);
        timer.cancel();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    setTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox.expand(
      child: Image.asset("lib/assets/images/splashscreen.jpg", fit: BoxFit.cover),
    ));
  }
}
