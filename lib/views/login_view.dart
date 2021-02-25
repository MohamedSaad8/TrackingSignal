import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/views/controll.dart';
import 'package:track_signal/widgets/CustomButton.dart';
import 'package:track_signal/widgets/custom_text.dart';
import 'package:track_signal/widgets/custom_text_form_field.dart';
import 'package:track_signal/widgets/socialMediaButton.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size ;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
            color: kMainColor
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Login" ,
          style: TextStyle(
              color: kMainColor,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            fontFamily: "Cairo"
          ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              SizedBox(height: size.height * 0.02,),
              Container(
                width: size.width,
                height: size.height * 0.2,
                child: Center(
                  child: Image.asset("assets/images/logo.png" , width: size.width / 2, height: size.height * 0.2,),
                ),
              ),
              SizedBox(height: size.height * 0.08,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Form(
                  child: Container(
                    height: size.height *0.15,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          onSave: (val){},
                          validator: (val){},
                          hintText: "Phone Number",
                          borderRadius: 10,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/phone.png"  ,width: 15, height: 15,),
                          ),
                          padding: 2,
                        ),
                        SizedBox(height: size.height*.015,),
                        CustomTextFormField(
                          onSave: (val){},
                          validator: (val){},
                          hintText: "Password",
                          borderRadius: 10,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset("assets/images/key.png"  ,width: 15, height: 15,),
                          ),
                          padding: 2,
                        ),


                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height*.03,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: size.height * 0.06 ,
                  child: CustomButton(
                    text: "Login",
                    buttonRadius: 10,
                    onClick: (){
                      Get.to(HomeView());

                    },
                    buttonWidth: size.width,
                    buttonHeight: size.height * 0.06,
                    buttonColor: kMainColor ,
                    borderColor: kMainColor,
                    textColor:  Colors.white,
                  ),
                ),
              ),
              SizedBox(height: size.height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: "Forgot Your Password ?",
                    fontColor: Color(0xffC5C5C5),
                    fontSize: 20,
                  ),
                  CustomText(
                    text: "Reset",
                    fontColor: kMainColor,
                    fontSize: 20,
                  ),
                ],
              ),
              SizedBox(height: size.height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(width: size.width / 3, height: 2, color: Color(0xffC5C5C5),),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: CustomText(
                      text: "OR",
                      fontColor: Color(0xffC5C5C5),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(width: size.width / 3, height: 2, color: Color(0xffC5C5C5),),
                ],
              ),
              SizedBox(height: size.height*.02,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: size.height * 0.06 ,
                  child: SocialMediaButton(
                    text: "Continue with Facebook",
                    buttonRadius: 10,
                    onClick: (){

                    },
                    buttonWidth: size.width,
                    buttonHeight: size.height * 0.06,
                    buttonColor: Color(0xff475993) ,
                    borderColor: Color(0xff475993) ,
                    textColor:  Colors.white,
                    buttonIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("assets/images/icon1.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height*.02,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  height: size.height * 0.06 ,
                  child: SocialMediaButton(
                    text: "Continue with Google",
                    buttonRadius: 10,
                    onClick: (){

                    },
                    buttonWidth: size.width,
                    buttonHeight: size.height * 0.06,
                    buttonColor: Color(0xffF14336) ,
                    borderColor: Color(0xffF14336) ,
                    textColor:  Colors.white,
                    buttonIcon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset("assets/images/icon1.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,)


            ],
          ),
        ),
      ),
    );
  }
}
