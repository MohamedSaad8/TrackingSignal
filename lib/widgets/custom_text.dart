import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
 final String text ;
 final Color fontColor ;
 final double fontSize ;
 final FontWeight fontWeight ;
 final Alignment textAlignment;

 CustomText(
      {@required this.text,
      this.fontColor  = Colors.black,
      this.fontSize   = 16,
      this.fontWeight = FontWeight.normal,
      this.textAlignment = Alignment.center
      });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      alignment: textAlignment,
      child: Text(
        text,
        //overflow: TextOverflow.fade,
        softWrap: true,
        style: TextStyle(
          color: fontColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: "Cairo"
        ),
      ),
    );
  }
}
