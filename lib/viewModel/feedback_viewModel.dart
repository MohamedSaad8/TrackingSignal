import 'package:get/get.dart';

class FeedBackViewModel extends GetxController

{
  List<String>  fakeUpdates = [] ;
  List<String>  runnerBehaviour = [] ;
  List<String>  paymentIssue = [] ;
  List<String>  packageCondition = []  ;

  final fakeUpdatesIndex1 = "Did not call me" ;
  final fakeUpdatesIndex2 = "Did not receive it" ;
  final fakeUpdatesIndex3 = "Did not reject it" ;
  final runnerBehaviourIndex1 = "Aggressive Behaviour" ;
  final runnerBehaviourIndex2 = "Sexual remarks" ;
  final runnerBehaviourIndex3 = "No face mask" ;
  final runnerBehaviourIndex4 = "Communication issues" ;
  final paymentIssueIndex1 ="Demanded extra payment" ;
  final paymentIssueIndex2 ="Did not return change";
  final packageConditionIndex1 = "Package is damaged" ;
  final packageConditionIndex2 = "Package is open" ;
  final packageConditionIndex3 = "Package has wrong items" ;

  addObjectToList(List<String> list , String object)
  {
    list.add(object);
    update();
  }

  removeObjectToList(List<String> list , String object)
  {
    list.remove(object);
    update();
  }

 bool listContainThisObject(List<String> list , String object)
  {
    if(list.contains(object)) return true ;
    else return false ;
  }











}