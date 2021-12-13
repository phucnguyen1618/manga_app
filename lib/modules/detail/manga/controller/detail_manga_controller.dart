import 'package:get/get.dart';

class DetailMangaController extends GetxController {

  List<String> imageList = [
    'assets/images/conan.jpg',
    'assets/images/kimetsu_no_yaiba.jpg',
    'assets/images/one_piece.jpg',
  ];

  onBack() {
    Get.back();
  }
}