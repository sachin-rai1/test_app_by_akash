import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:test_app_by_akash/app/modules/explorePage/views/explore_page_view.dart';
import 'package:test_app_by_akash/app/modules/home/views/home_view.dart';
import 'package:test_app_by_akash/app/modules/settingsPage/views/settings_page_view.dart';

import '../controllers/bottom_navigation_controller.dart';

class BottomNavigationView extends GetView<BottomNavigationController> {
  BottomNavigationView({Key? key}) : super(key: key);
  final bottomNavigationController = Get.put(BottomNavigationController());

  @override
  Widget build(BuildContext context) {

    List<Widget> pages = <Widget>[
      HomeView(),
      const ExplorePageView(),
      const SettingsPageView()
    ];

    return Scaffold(
        body: Obx(() {
          return pages.elementAt(controller.selectedIndex.value);
        }),
        extendBody: true,
        endDrawer: const Drawer(),
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back_ios),
          centerTitle: true,
        ),
        bottomNavigationBar: Obx(() {
          return ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0)),
            child: BottomNavigationBar(
              backgroundColor: Colors.cyan.shade700,
              onTap: controller.onItemTapped,
              selectedItemColor: Colors.white,
              enableFeedback: true,
              currentIndex: controller.selectedIndex.value,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.videocam_circle_fill),
                  label: 'Explore',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.settings),
                  label: 'Settings',
                ),
              ],
            ),
          );
        }),
      );
  }
}
