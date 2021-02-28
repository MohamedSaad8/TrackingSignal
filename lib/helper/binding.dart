import 'package:get/get.dart';
import 'package:track_signal/viewModel/feedback_viewModel.dart';

class Binding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut(() => FeedBackViewModel());
  }

}