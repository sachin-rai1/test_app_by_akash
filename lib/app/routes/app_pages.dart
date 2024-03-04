import 'package:get/get.dart';

import '../modules/auth_screen/bindings/auth_screen_binding.dart';
import '../modules/auth_screen/views/auth_screen_view.dart';
import '../modules/bottomNavigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottomNavigation/views/bottom_navigation_view.dart';
import '../modules/explorePage/bindings/explore_page_binding.dart';
import '../modules/explorePage/views/explore_page_view.dart';
import '../modules/get_started/bindings/get_started_binding.dart';
import '../modules/get_started/views/get_started_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/settingsPage/bindings/settings_page_binding.dart';
import '../modules/settingsPage/views/settings_page_view.dart';
import '../modules/signup_screen/bindings/signup_screen_binding.dart';
import '../modules/signup_screen/views/signup_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVIGATION,
      page: () => BottomNavigationView(),
      binding: BottomNavigationBinding(),
    ),
    GetPage(
      name: _Paths.EXPLORE_PAGE,
      page: () => const ExplorePageView(),
      binding: ExplorePageBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_PAGE,
      page: () => const SettingsPageView(),
      binding: SettingsPageBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.AUTH_SCREEN,
      page: () => const AuthScreenView(),
      binding: AuthScreenBinding(),
    ),
    GetPage(
        name: _Paths.GET_STARTED,
        page: () => const GetStartedView(),
        binding: GetStartedBinding(),
        transition: Transition.fadeIn),
    GetPage(
      name: _Paths.SIGNUP_SCREEN,
      page: () => const SignupScreenView(),
      binding: SignupScreenBinding(),
    ),
  ];
}
