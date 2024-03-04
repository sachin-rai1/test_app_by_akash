import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_app_by_akash/app/modules/bottomNavigation/views/bottom_navigation_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      // home: AnimatedSplashScreen(
      //   splash: "assets/png/SplashScreen.png",
      //   nextScreen: BottomNavigationView(),
      //   splashTransition: SplashTransition.scaleTransition,
      //   animationDuration: const Duration(milliseconds: 1500),
      // ),
    ),
  );
}
