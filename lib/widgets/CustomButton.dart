import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_signal/widgets/custom_text.dart';


class CustomButton extends StatelessWidget {
  final double buttonWidth  ;
  final double buttonHeight  ;
  final double buttonRadius  ;
  final Function onClick ;
  final String text ;
  final Color buttonColor ;
  final Color borderColor;
  final Color textColor ;


  CustomButton({this.textColor,this.buttonWidth, this.buttonHeight, this.buttonRadius , this.onClick , this.text , this.borderColor , this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: buttonWidth,
        height: buttonHeight,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(buttonRadius),
          border: Border.all(
            color: borderColor,
            width: 2
          )
        ),
        child: CustomText(
          text: text,
          fontColor: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}
