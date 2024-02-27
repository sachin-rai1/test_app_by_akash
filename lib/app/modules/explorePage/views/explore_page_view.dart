import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:test_app_by_akash/app/data/widgets/mainlayout.dart';

import '../controllers/explore_page_controller.dart';

class ExplorePageView extends GetView<ExplorePageController> {
  const ExplorePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ExplorePageView'),
        centerTitle: true,
      ),
      body: MainLayOut(
        beforeGradient: Text("Hey Sachin"),
        afterGradient: Text("Hello Sachin"),
      )
    );
  }
}
