import 'package:get/get.dart';
import 'package:manga_app/routes/app_pages.dart';

class ExploreController extends GetxController {

  onItemTopAuthorClicked() {
    Get.toNamed(Routes.DETAIL_AUTHOR);
  }

  onItemTrendingMangaClicked() {
    Get.toNamed(Routes.DETAIL_MANGA);
  }
}