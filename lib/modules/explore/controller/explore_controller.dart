import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/routes/app_pages.dart';

class ExploreController extends GetxController {

  GlobalKey<ScaffoldState> endDrawerKey = GlobalKey();

  openDrawerMenu() {
    if (!(endDrawerKey.currentState!.isEndDrawerOpen)) {
      endDrawerKey.currentState!.openEndDrawer();
    }
  }

  closeDrawerMenu() {
    if(endDrawerKey.currentState!.isEndDrawerOpen){
      Get.back();
    }
  }

  onItemMangaClicked() {
    Get.toNamed(Routes.DETAIL);
  }
}
