//
// (taskJob)(550000_AppCMPreventiva_APP_OSX_(n)_OSX_(n))
//
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'customColors.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  _WebViewPage createState() => _WebViewPage();
}

class _WebViewPage extends State<WebViewPage> {
  ScrollController scrollController = ScrollController();
  bool loadingScreenBool = true;

  void loadingScreen() async {
    await Future.delayed(const Duration(seconds: 1), () {});
    setState(() {
      loadingScreenBool = true;
    });
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    loadingScreen();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.1),
          child: Stack(children: [
            const WebView(initialUrl: "https:\\www.google.com"),
            if (loadingScreenBool)
              SizedBox.expand(
                  child: Container(
                      color: CustomColors.buttonOk.withOpacity(0.8),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SpinKitFadingCube(
                              itemBuilder: (BuildContext context, int index) {
                                return DecoratedBox(
                                  decoration: BoxDecoration(
                                      color: index.isEven
                                          ? Colors.white
                                          : CustomColors.buttonOk),
                                );
                              },
                            ),
                            const Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  "Caricamento...",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
                                ))
                          ])))
          ])),
      Container(),
    ]));
  }
}
