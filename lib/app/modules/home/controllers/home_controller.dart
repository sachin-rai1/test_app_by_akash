import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<bool> isSelected = [true, false].obs;
  RxBool isYearlyPressed = false.obs;
}
