import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomChip extends StatelessWidget {
  final Function onTap ;
  final String chipTitle ;
  final double chipWidth ;
  final double chipHeight;
  final double chipTitleFontSize ;
  final Color chipColor ;
  final Color chipTextColor ;


  CustomChip(
      {this.onTap,
      this.chipTitle,
      this.chipWidth,
      this.chipHeight,
      this.chipTitleFontSize,
      this.chipColor,
        this.chipTextColor
      });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: chipColor,
          borderRadius: BorderRadius.circular(50),
        ),
        width: chipWidth.w,
        height: chipHeight.h ,
        child: Text(
          chipTitle ,
          style: TextStyle(
            fontSize: chipTitleFontSize.sp ,
            color: chipTextColor ,
            fontFamily: "Cairo"

          ),
        ),
      ),
    );
  }
}
