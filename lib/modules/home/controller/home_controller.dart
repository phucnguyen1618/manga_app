import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  GlobalKey<ScaffoldState> endDrawerKey = GlobalKey();
  final pageController = PageController(initialPage: 0);

  openDrawerMenu() {
    if (!(endDrawerKey.currentState!.isEndDrawerOpen)) {
      endDrawerKey.currentState!.openEndDrawer();
    }
  }

  closeDrawerMenu() {
    if (endDrawerKey.currentState!.isEndDrawerOpen) {
      Get.back();
    }
  }

  onItemMenuChange(int index) {
    pageController.jumpToPage(index);
    closeDrawerMenu();
  }
}
