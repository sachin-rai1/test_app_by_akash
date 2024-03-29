import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxBool isSplashScreenLoading = false.obs;

  @override
  Future<void> onInit() async {
    await loadingSplashScreen();
    super.onInit();
  }


  Future<void> loadingSplashScreen() async {
    isSplashScreenLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 2500));
    isSplashScreenLoading.value = false;
  }

  void onItemTapped(int index) {
      selectedIndex.value = index;
  }
}
