import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/views/feedback_view.dart';
import 'package:track_signal/views/rewards.dart';
import 'package:track_signal/widgets/custom_text.dart';
import 'package:track_signal/widgets/socialMediaButton.dart';

class PackageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: kMainColor),
        title: Text(
          "Package Details",
          style: TextStyle(
            fontSize: 27.sp,
            fontWeight: FontWeight.bold,
            fontFamily: "Cairo",
            color: kMainColor,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: () {
                Get.bottomSheet(
                  Container(
                    height: 230.h,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: InkWell(
                            onTap: () {
                              Get.to(FeedbackView());
                            },
                            child: Container(
                              color: Color(0xffF5F5F5),
                              width: 375.w,
                              height: 50.h,
                              child: CustomText(
                                textAlignment: Alignment.center,
                                text: "Send Feedback",
                                fontSize: 20.sp,
                                fontColor: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              color: Color(0xffF5F5F5),
                              width: 375.w,
                              height: 50.h,
                              child: CustomText(
                                textAlignment: Alignment.center,
                                text: "Share",
                                fontSize: 20.sp,
                                fontColor: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              color: Color(0xffF5F5F5),
                              width: 375.w,
                              height: 50.h,
                              child: CustomText(
                                textAlignment: Alignment.center,
                                text: "Delete Package",
                                fontSize: 20.sp,
                                fontColor: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              color: Color(0xffF5F5F5),
                              width: 375.w,
                              height: 50.h,
                              child: CustomText(
                                textAlignment: Alignment.center,
                                text: "Cancel",
                                fontSize: 20.sp,
                                fontColor: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Icon(
                Icons.more_vert,
                color: kMainColor,
                size: 30.w,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: 375.w,
            height: 166.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color(0xffDCDCDC),
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 5),
                  child: CustomText(
                    text: "Aramex Package from Souq.com",
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    fontColor: Colors.black,
                  ),
                ),
                CustomText(
                  text: "450329651103056126",
                  fontWeight: FontWeight.normal,
                  fontSize: 20.sp,
                  fontColor: Colors.black,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: SocialMediaButton(
                    text: "Send Feedback & Get Points",
                    buttonTextFontSize: 20.sp,
                    buttonRadius: 9,
                    onClick: () {
                      Get.to(Rewards());
                    },
                    buttonHeight: 50.sp,
                    buttonWidth: 375.w,
                    textColor: Colors.black,
                    buttonColor: Color(0xffD3B210),
                    buttonIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("assets/images/icon20.png"),
                    ),
                    borderColor: Color(0xffD3B210),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
