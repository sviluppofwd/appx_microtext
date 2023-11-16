//

// (taskJob)(550000_AppCMPreventiva_OSX_(n))
//
import 'package:flutter/material.dart';

/* ### UTILIZZO
!!! DA TESTARE, NON UTILIZZARE !!!
*/

class CustomButton extends StatelessWidget {
  final Text text;
  final clickAction;
  final Color color;
  final bool shadow;
  final shadowColor;
  final height;
  final width;
  CustomButton(
      {required this.text,
      this.clickAction,
      required this.color,
      this.shadow = false,
      this.shadowColor,
      this.height = 0,
      this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: MaterialButton(
          elevation: 1,
          onPressed: clickAction(),
          child: Container(
            height: height == 0 ? MediaQuery.of(context).size.height / 20 : height,
            width: width == 0 ? MediaQuery.of(context).size.width / 1.3 : width,
            decoration: shadow
                ? BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.redAccent,
                      blurRadius: 5.0, // has the effect of softening the shadow
                      spreadRadius: 1.0, // has the effect of extending the shadow
                      offset: Offset(
                        2.0, // horizontal, move right 10
                        2.0, // vertical, move down 10
                      ),
                    ),
                  ], color: color)
                : BoxDecoration(),
            child: Center(
              child: text,
            ),
          )),
    );
  }
}
