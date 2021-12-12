import 'package:get/get.dart';
import 'package:manga_app/modules/detail/author/view/detail_author_page.dart';
import 'package:manga_app/modules/detail/manga/view/detail_manga_page.dart';
import 'package:manga_app/modules/genres/view/genres_page.dart';
import 'package:manga_app/modules/home/view/home_page.dart';
import 'package:manga_app/modules/search/view/search_page.dart';

part 'app_routes.dart';

final routePages = [
  GetPage(name: Routes.HOME, page: () => const HomePage()),
  GetPage(name: Routes.GENRES, page: () => const GenresPage()),
  GetPage(name: Routes.DETAIL_MANGA, page: () => const DetailMangaPage()),
  GetPage(name: Routes.DETAIL_AUTHOR, page: () => const DetailAuthorPage()),
  GetPage(name: Routes.SEARCH, page: () => const SearchPage()),
];
