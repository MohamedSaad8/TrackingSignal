import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/views/package_details.dart';
import 'package:track_signal/widgets/CustomButton.dart';
import 'package:track_signal/widgets/custom_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TrackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Image.asset(
                "assets/images/avator.png",
                width: size.width,
                height: size.height * 0.3,
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomTextFormField(
                onSave: (val){},
                validator: (val){},
                hintText: "Tracking Number",
                borderRadius: 10,
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset("assets/images/icon13.png"  ,width: 15, height: 15,),
                ),
                padding: 2,
              ),
            ),
            SizedBox(height: size.height*.015,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: DropdownButtonFormField(
                items: [
                  DropdownMenuItem(
                    value: "mohamed saad",
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.star),
                        Text("text mohamed saad"),
                      ],
                    ),
                  ),
                  DropdownMenuItem(
                      value: "mohamed saad1",
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star),
                          Text("text mohamed saad 1"),
                        ],
                      ),
                  ),
                ],
                // value: selectedValue,
                onChanged: (newValue) {
                  //selectedValue = newValue ;
                },
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(2),
                  hintText: "Courier",
                  hintStyle: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 20,
                    color: Color(0xffC5C5C5),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/icon14.png"  ,width: 15, height: 15,),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),

                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                buttonFontSize: 20.sp,
                text: "Track",
                buttonRadius: 10,
                onClick: (){
                  Get.to(PackageDetails());
                },
                buttonWidth: size.width,
                buttonHeight: size.height * 0.06,
                buttonColor: kMainColor ,
                borderColor: kMainColor,
                textColor:  Colors.white,
              ),
            ),


          ],
        ),
      ),
    );
  }
}
