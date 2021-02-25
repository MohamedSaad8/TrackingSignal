import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/views/login_view.dart';
import 'package:track_signal/views/register_view.dart';
import 'package:track_signal/widgets/CustomButton.dart';
import 'package:track_signal/widgets/custom_text.dart';

import 'feedback_view.dart';

class OnStartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size ;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            SizedBox(height: size.height * 0.05,),
            Container(
              width: size.width,
              height: size.height * 0.2,
              child: Center(
                child: Image.asset("assets/images/logo.png" , width: size.width / 2, height: size.height * 0.2,),
              ),
            ),
            SizedBox(height: size.height * 0.05,),
            Container(
              height: size.height*0.45,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("assets/images/icon1.png",
                        width: size.width * 0.128,
                        height: size.width * 0.128,
                      ),
                      title: CustomText(
                        text: "Powerful Tracking Tools",
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        textAlignment: Alignment.centerLeft,
                        fontColor: Colors.black,
                      ),
                      subtitle: CustomText(
                        text: "Track all your packages with one-click from your favorite merchants across all major couriers in Egypt.",
                        fontSize: 14,
                        fontColor: Color(0xff858585),
                        textAlignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("assets/images/icon2.png",
                        width: size.width * 0.128,
                        height: size.width * 0.128,
                      ),
                      title: CustomText(
                        text: "Push Notifications",
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        textAlignment: Alignment.centerLeft,
                        fontColor: Colors.black,
                      ),
                      subtitle: CustomText(
                        text: "Receive instant updates about your packages.",
                        fontSize: 14,
                        fontColor: Color(0xff858585),
                        textAlignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("assets/images/icon3.png",
                        width: size.width * 0.128,
                        height: size.width * 0.128,
                      ),
                      title: CustomText(
                        text: "Send Feedback",
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        textAlignment: Alignment.centerLeft,
                        fontColor: Colors.black,
                      ),
                      subtitle: CustomText(
                        text: "Send instant feedback to couriers about your packages.",
                        fontSize: 14,
                        fontColor: Color(0xff858585),
                        textAlignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListTile(
                      minVerticalPadding: 0,
                      leading: Image.asset("assets/images/icon4.png",
                        width: size.width * 0.128,
                        height: size.width * 0.128,
                      ),
                      title: CustomText(
                        text: "No Payment Required",
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        textAlignment: Alignment.centerLeft,
                        fontColor: Colors.black,
                      ),
                      subtitle: CustomText(
                        text: "Free to use. No hidden fees.",
                        fontSize: 14,
                        fontColor: Color(0xff858585),
                        textAlignment: Alignment.centerLeft,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05,),
            Container(
              width: size.width,
              height: size.height * 0.05,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomButton(
                    text: "Sign Up",
                    buttonRadius: 10,
                    onClick: (){
                       Get.to(RegisterView());
                    },
                    buttonWidth: size.width /2.5,
                    buttonHeight: size.height * 0.1 ,
                    buttonColor: Colors.white,
                    borderColor: kMainColor,
                    textColor:  kMainColor,
                  ),
                  CustomButton(
                    text: "Login",
                    buttonRadius: 10,
                    onClick: (){
                      Get.to(LoginView());
                    },
                    buttonWidth: size.width /2.5,
                    buttonHeight: size.height * 0.1 ,
                    buttonColor: kMainColor,
                    borderColor: kMainColor,
                    textColor: Colors.white,
                  ),
                ],
              ),
            ) ,
            SizedBox(height: size.height * 0.03,),
            InkWell(
              onTap: (){
                Get.to(FeedbackView()) ;
              },
              child: CustomText(
                text: "Continue without account",
                fontColor: Color(0xffC5C5C5),
                fontSize: 18,
              ),
            ),
            SizedBox(height: size.height * 0.03,),

          ],
        ),
      ),
    );
  }
}
