import 'package:get/get.dart';

class BottomnavController extends GetxController {
  var selectionIndex = 2.obs;
  var textValue = 0.obs;

  void changeIndex(int index) {
    selectionIndex.value = index;
  }
}