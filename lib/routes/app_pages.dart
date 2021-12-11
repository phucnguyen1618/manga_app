import 'package:get/get.dart';
import 'package:manga_app/modules/detail/view/detail_page.dart';
import 'package:manga_app/modules/explore/view/explore_page.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(name: Routes.EXPLORE, page: () => const ExplorePage()),
  GetPage(name: Routes.DETAIL, page: () => const DetailPage()),
];