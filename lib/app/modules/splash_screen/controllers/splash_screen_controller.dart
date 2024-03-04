import 'package:get/get.dart';
import 'package:test_app_by_akash/app/modules/get_started/views/get_started_view.dart';

class SplashScreenController extends GetxController {
  RxBool isSplashScreenLoading = false.obs;

  @override
  Future<void> onInit() async {
    await loadingSplashScreen();
    super.onInit();
  }

  Future<void> loadingSplashScreen() async {
    isSplashScreenLoading.value = true;
    await Future.delayed(const Duration(milliseconds: 2000));
    isSplashScreenLoading.value = false;
    // Get.to(() => GetStartedView());
  }
}
