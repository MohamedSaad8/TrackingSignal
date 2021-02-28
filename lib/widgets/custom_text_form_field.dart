import 'package:flutter/material.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatelessWidget {
  final Function validator;
  final Function onSave;
  final bool obscureText;
  final bool filled;
  final TextInputType keyboardType;
  final String hintText;
  final Widget prefixIcon;
  final Color prefixIconColor;
  final Color fillColor;
  final Color borderColor;
  final Color focusedBorderColor;
  final Color cursorColor;
  final double borderWidth;
  final double borderRadius;
  final bool withSuffixIcon;
  final double padding ;

  CustomTextFormField(
      {this.withSuffixIcon = false,
       this.padding,
      @required this.validator,
      @required this.onSave,
      this.obscureText = false,
      this.keyboardType = TextInputType.text,
      @required this.hintText,
      @required this.prefixIcon,
      this.filled = false,
      this.prefixIconColor = Colors.black,
      this.fillColor = Colors.white,
      this.focusedBorderColor = kMainColor,
      this.borderColor = Colors.black,
      this.cursorColor = Colors.black,
      this.borderWidth = 2.0,
      this.borderRadius = 20.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: 375.w,
      child: TextFormField(
        validator: validator,
        onSaved: onSave,
        obscureText: obscureText,
        keyboardType: keyboardType,
        cursorColor: cursorColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(padding),
          hintText: hintText,
          hintStyle: TextStyle(
            fontFamily: "Cairo",
            fontSize: 20,
            color: Color(0xffC5C5C5),

          ),
          suffixIcon: withSuffixIcon
              ? Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color(0xff757575),
                )
              : Container(
                  width: 0,
                  height: 0,
                ),
          prefixIcon: prefixIcon ,
          filled: filled,
          fillColor: fillColor,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: focusedBorderColor,
              width: borderWidth,
            ),
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          ),
        ),
      ),
    );
  }
}
