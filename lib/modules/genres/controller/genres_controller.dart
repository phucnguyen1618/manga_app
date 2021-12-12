import 'package:get/get.dart';
import 'package:manga_app/routes/app_pages.dart';

class GenresController extends GetxController {

  onItemMangaClicked() {
    Get.toNamed(Routes.DETAIL_MANGA);
  }
}
