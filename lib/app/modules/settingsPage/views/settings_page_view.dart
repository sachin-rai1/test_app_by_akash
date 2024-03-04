import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_app_by_akash/app/data/widgets/mainlayout.dart';

import '../controllers/settings_page_controller.dart';

class SettingsPageView extends GetView<SettingsPageController> {
  const SettingsPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainLayout()
    );
  }
}
