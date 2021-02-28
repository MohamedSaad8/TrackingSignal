import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:track_signal/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PackageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size ;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: size.width,
        height: size.height,
        child: ListView.builder(itemBuilder:(context , index){
          Color containerColor ;
          if(index% 2 == 0)
            containerColor = Colors.white ;
          else
            containerColor = Colors.grey.shade100 ;
          return Container(
            color: containerColor,
            width: size.width,
            height: size.height * 0.12,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: size.width * 0.2,
                    height: size.width * 0.2,
                    child: Image.asset("assets/images/icon15.png"),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10 , top: 8, bottom: 8 , right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomText(
                              text: "Souq.com",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              fontColor: Colors.black,
                            ),
                            CustomText(
                              text: "..4881",
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              fontColor: Colors.black,
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only( right: 5),
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: kMainColor,
                                  ),
                                ),
                                CustomText(
                                  text: "Delivered Feb 6",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                  fontColor: Color(0xffAFAFAF),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only( right: 5),
                                  child: Icon(Icons.location_on_outlined , color: kMainColor,size: 15,)
                                ),
                                CustomText(
                                  text: "Cairo, Egypt",
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.normal,
                                  fontColor: Color(0xffAFAFAF),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],

            ),
          );
        },
        itemCount: 5,
        ),
      ),

    );
  }
}
