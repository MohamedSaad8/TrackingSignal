import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_signal/widgets/custom_text.dart';

class SocialMediaButton extends StatelessWidget {
  final double buttonWidth  ;
  final double buttonHeight  ;
  final double buttonRadius  ;
  final Function onClick ;
  final String text ;
  final Color buttonColor ;
  final Color borderColor;
  final Color textColor ;
  final Widget buttonIcon ;
  final double buttonTextFontSize ;


  SocialMediaButton({this.buttonTextFontSize = 20,this.buttonIcon,this.textColor,this.buttonWidth, this.buttonHeight, this.buttonRadius , this.onClick , this.text , this.borderColor , this.buttonColor});

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
        child: Row(
          children: [
            buttonIcon,
            SizedBox(width: 10,),
            CustomText(
              text: text,
              fontColor: textColor,
              fontWeight: FontWeight.bold,
              fontSize: buttonTextFontSize,
              textAlignment: Alignment.centerLeft,
            ),
          ],
        ),
      ),
    );
  }
}
