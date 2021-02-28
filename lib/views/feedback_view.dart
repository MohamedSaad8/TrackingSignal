import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:track_signal/helper/constant.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:track_signal/viewModel/feedback_viewModel.dart';
import 'package:track_signal/widgets/CustomButton.dart';
import 'package:track_signal/widgets/custom_chip.dart';
import 'package:track_signal/widgets/custom_text.dart';
import 'package:track_signal/widgets/custom_text_form_field.dart';

class FeedbackView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: kMainColor),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Feedback",
          style: TextStyle(
              color: kMainColor,
              fontSize: 27,
              fontWeight: FontWeight.bold,
              fontFamily: "Cairo"),
        ),
      ),
      body: GetBuilder<FeedBackViewModel>(
        init: FeedBackViewModel(),
        builder: (controller) => SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: size.width,
                  height: 130.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Color(0xffC5C5C5))),
                  child: Column(
                    children: [
                      CustomText(
                        text: "Fake Update",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.black,
                        fontSize: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomChip(
                              onTap: () {
                                if (controller.listContainThisObject(
                                    controller.fakeUpdates,
                                    controller.fakeUpdatesIndex1)) {
                                  controller.removeObjectToList(
                                      controller.fakeUpdates,
                                      controller.fakeUpdatesIndex1);
                                } else
                                  controller.addObjectToList(
                                      controller.fakeUpdates,
                                      controller.fakeUpdatesIndex1);
                              },
                              chipTitle: controller.fakeUpdatesIndex1,
                              chipTitleFontSize: 17,
                              chipTextColor: Colors.grey,
                              chipWidth: 140.w,
                              chipHeight: 35.h,
                              chipColor: (controller.listContainThisObject(
                                      controller.fakeUpdates,
                                      controller.fakeUpdatesIndex1)
                                  ? kMainColor
                                  : Color(0xffF6F6F6)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomChip(
                              onTap: () {
                                if (controller.listContainThisObject(
                                    controller.fakeUpdates,
                                    controller.fakeUpdatesIndex2)) {
                                  controller.removeObjectToList(
                                      controller.fakeUpdates,
                                      controller.fakeUpdatesIndex2);
                                } else
                                  controller.addObjectToList(
                                      controller.fakeUpdates,
                                      controller.fakeUpdatesIndex2);
                              },
                              chipTitle: controller.fakeUpdatesIndex2,
                              chipTitleFontSize: 17,
                              chipTextColor: Colors.grey,
                              chipWidth: 140.w,
                              chipHeight: 35.h,
                              chipColor: (controller.listContainThisObject(
                                      controller.fakeUpdates,
                                      controller.fakeUpdatesIndex2)
                                  ? kMainColor
                                  : Color(0xffF6F6F6)),
                            ),
                          )
                        ],
                      ),
                      CustomChip(
                        onTap: () {
                          if (controller.listContainThisObject(
                              controller.fakeUpdates,
                              controller.fakeUpdatesIndex3)) {
                            controller.removeObjectToList(
                                controller.fakeUpdates,
                                controller.fakeUpdatesIndex3);
                          } else
                            controller.addObjectToList(controller.fakeUpdates,
                                controller.fakeUpdatesIndex3);
                        },
                        chipTitle: controller.fakeUpdatesIndex3,
                        chipTitleFontSize: 17,
                        chipTextColor: Colors.grey,
                        chipWidth: 150.w,
                        chipHeight: 35.h,
                        chipColor: (controller.listContainThisObject(
                                controller.fakeUpdates,
                                controller.fakeUpdatesIndex3)
                            ? kMainColor
                            : Color(0xffF6F6F6)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: size.width,
                  height: 125.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Color(0xffC5C5C5))),
                  child: Column(
                    children: [
                      CustomText(
                        text: "Runner Behaviour",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.black,
                        fontSize: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomChip(
                            onTap: () {
                              if (controller.listContainThisObject(
                                  controller.runnerBehaviour,
                                  controller.runnerBehaviourIndex1)) {
                                controller.removeObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex1);
                              } else
                                controller.addObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex1);
                            },
                            chipTitle: controller.runnerBehaviourIndex1,
                            chipTitleFontSize: 17,
                            chipTextColor: Colors.grey,
                            chipWidth: 155.w,
                            chipHeight: 35.h,
                            chipColor: (controller.listContainThisObject(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex1)
                                ? kMainColor
                                : Color(0xffF6F6F6)),
                          ),
                          CustomChip(
                            onTap: () {
                              if (controller.listContainThisObject(
                                  controller.runnerBehaviour,
                                  controller.runnerBehaviourIndex2)) {
                                controller.removeObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex2);
                              } else
                                controller.addObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex2);
                            },
                            chipTitle: controller.runnerBehaviourIndex2,
                            chipTitleFontSize: 17,
                            chipTextColor: Colors.grey,
                            chipWidth: 145.w,
                            chipHeight: 35.h,
                            chipColor: (controller.listContainThisObject(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex2)
                                ? kMainColor
                                : Color(0xffF6F6F6)),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomChip(
                            onTap: () {
                              if (controller.listContainThisObject(
                                  controller.runnerBehaviour,
                                  controller.runnerBehaviourIndex3)) {
                                controller.removeObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex3);
                              } else
                                controller.addObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex3);
                            },
                            chipTitle: controller.runnerBehaviourIndex3,
                            chipTitleFontSize: 17,
                            chipTextColor: Colors.grey,
                            chipWidth: 155.w,
                            chipHeight: 35.h,
                            chipColor: (controller.listContainThisObject(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex3)
                                ? kMainColor
                                : Color(0xffF6F6F6)),
                          ),
                          CustomChip(
                            onTap: () {
                              if (controller.listContainThisObject(
                                  controller.runnerBehaviour,
                                  controller.runnerBehaviourIndex4)) {
                                controller.removeObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex4);
                              } else
                                controller.addObjectToList(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex4);
                            },
                            chipTitle: controller.runnerBehaviourIndex4,
                            chipTitleFontSize: 17,
                            chipTextColor: Colors.grey,
                            chipWidth: 145.w,
                            chipHeight: 35.h,
                            chipColor: (controller.listContainThisObject(
                                    controller.runnerBehaviour,
                                    controller.runnerBehaviourIndex4)
                                ? kMainColor
                                : Color(0xffF6F6F6)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: size.width,
                  height: 125.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Color(0xffC5C5C5))),
                  child: Column(
                    children: [
                      CustomText(
                        text: "Payment Issue",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.black,
                        fontSize: 20.sp,
                      ),
                      CustomChip(
                        onTap: () {
                          if (controller.listContainThisObject(
                              controller.paymentIssue,
                              controller.paymentIssueIndex1)) {
                            controller.removeObjectToList(
                                controller.paymentIssue,
                                controller.paymentIssueIndex1);
                          } else
                            controller.addObjectToList(controller.paymentIssue,
                                controller.paymentIssueIndex1);
                        },
                        chipTitle: controller.paymentIssueIndex1,
                        chipTitleFontSize: 17,
                        chipTextColor: Colors.grey,
                        chipWidth: 220.w,
                        chipHeight: 35.h,
                        chipColor: (controller.listContainThisObject(
                                controller.paymentIssue,
                                controller.paymentIssueIndex1)
                            ? kMainColor
                            : Color(0xffF6F6F6)),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      CustomChip(
                        onTap: () {
                          if (controller.listContainThisObject(
                              controller.paymentIssue,
                              controller.paymentIssueIndex2)) {
                            controller.removeObjectToList(
                                controller.paymentIssue,
                                controller.paymentIssueIndex2);
                          } else
                            controller.addObjectToList(controller.paymentIssue,
                                controller.paymentIssueIndex2);
                        },
                        chipTitle: controller.paymentIssueIndex2,
                        chipTitleFontSize: 17,
                        chipTextColor: Colors.grey,
                        chipWidth: 220.w,
                        chipHeight: 35.h,
                        chipColor: (controller.listContainThisObject(
                                controller.paymentIssue,
                                controller.paymentIssueIndex2)
                            ? kMainColor
                            : Color(0xffF6F6F6)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Container(
                  width: size.width,
                  height: 140.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Color(0xffC5C5C5))),
                  child: Column(
                    children: [
                      CustomText(
                        text: "Package Condition",
                        fontWeight: FontWeight.bold,
                        fontColor: Colors.black,
                        fontSize: 20.sp,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomChip(
                              onTap: () {
                                if (controller.listContainThisObject(
                                    controller.packageCondition,
                                    controller.packageConditionIndex1)) {
                                  controller.removeObjectToList(
                                      controller.packageCondition,
                                      controller.packageConditionIndex1);
                                } else
                                  controller.addObjectToList(
                                      controller.packageCondition,
                                      controller.packageConditionIndex1);
                              },
                              chipTitle: controller.packageConditionIndex1,
                              chipTitleFontSize: 17,
                              chipTextColor: Colors.grey,
                              chipWidth: 155.w,
                              chipHeight: 35.h,
                              chipColor: (controller.listContainThisObject(
                                      controller.packageCondition,
                                      controller.packageConditionIndex1)
                                  ? kMainColor
                                  : Color(0xffF6F6F6)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomChip(
                              onTap: () {
                                if (controller.listContainThisObject(
                                    controller.packageCondition,
                                    controller.packageConditionIndex2)) {
                                  controller.removeObjectToList(
                                      controller.packageCondition,
                                      controller.packageConditionIndex2);
                                } else
                                  controller.addObjectToList(
                                      controller.packageCondition,
                                      controller.packageConditionIndex2);
                              },
                              chipTitle: controller.packageConditionIndex2,
                              chipTitleFontSize: 17,
                              chipTextColor: Colors.grey,
                              chipWidth: 145.w,
                              chipHeight: 35.h,
                              chipColor: (controller.listContainThisObject(
                                      controller.packageCondition,
                                      controller.packageConditionIndex2)
                                  ? kMainColor
                                  : Color(0xffF6F6F6)),
                            ),
                          )
                        ],
                      ),
                      CustomChip(
                        onTap: () {
                          if (controller.listContainThisObject(
                              controller.packageCondition,
                              controller.packageConditionIndex3)) {
                            controller.removeObjectToList(
                                controller.packageCondition,
                                controller.packageConditionIndex3);
                          } else
                            controller.addObjectToList(
                                controller.packageCondition,
                                controller.packageConditionIndex3);
                        },
                        chipTitle: controller.packageConditionIndex3,
                        chipTitleFontSize: 17,
                        chipTextColor: Colors.grey,
                        chipWidth: 165.w,
                        chipHeight: 35.h,
                        chipColor: (controller.listContainThisObject(
                                controller.packageCondition,
                                controller.packageConditionIndex3)
                            ? kMainColor
                            : Color(0xffF6F6F6)),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                 hintText: "Add more details ..",
                 border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28 ,vertical: 12),
                child: CustomButton(
                  text: "Send",buttonColor: kMainColor,
                  buttonWidth: 375.w,
                  buttonHeight: 40.h,
                  textColor: Colors.white,
                  buttonFontSize: 20.sp,
                  onClick: (){},
                  buttonRadius: 9,
                  borderColor: kMainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
