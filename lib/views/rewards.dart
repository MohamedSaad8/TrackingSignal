import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/widgets/custom_text.dart';

class Rewards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: kMainColor),
        centerTitle: true,
        title: Text(
          "Rewards",
          style: TextStyle(
            fontSize: 27.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: kMainColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Container(
          height: 170.h,
          width: 375.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              image: DecorationImage(
                  image: ExactAssetImage("assets/images/rewards.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Container(
                height: 60.h,
                child: Row(
                  children: [
                    SizedBox(width: 50.w),
                    CustomText(
                      text: "348 ",
                      fontColor: Colors.black,
                      fontSize: 40.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "Points",
                      fontColor: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      textAlignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 50.w,
                  ),
                  CustomText(
                    text: "148 points expiring on 10 Nov 2021",
                    fontSize: 14.sp,
                    fontColor: Color(0xff575757),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 50.w,
                  ),
                  Image.asset(
                    "assets/images/icon20.png",
                    width: 60.w,
                    height: 50.h,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomText(
                          text: "Achieve Gold",
                          fontSize: 16.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.bold,
                          textAlignment: Alignment.topLeft,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        CustomText(
                          text:
                              "Complete 7 more feedbacks by July 15 to achieve Gold status. .",
                          fontSize: 12.sp,
                          fontColor: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
