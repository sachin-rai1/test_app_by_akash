import 'package:get/get.dart';

import '../modules/bottomNavigation/bindings/bottom_navigation_binding.dart';
import '../modules/bottomNavigation/views/bottom_navigation_view.dart';
import '../modules/explorePage/bindings/explore_page_binding.dart';
import '../modules/explorePage/views/explore_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/settingsPage/bindings/settings_page_binding.dart';
import '../modules/settingsPage/views/settings_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOM_NAVIGATION;

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
  ];
}
