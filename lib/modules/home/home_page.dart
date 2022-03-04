import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';
import 'package:manga_app/modules/bookmark/bookmark_page.dart';
import 'package:manga_app/modules/explore/explore_page.dart';
import 'package:manga_app/modules/favorites/favorites_page.dart';
import 'package:manga_app/modules/settings/setting_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

part 'home_page_children.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: PersistentTabView(
        context,
        backgroundColor: AppColor.backgroundColor,
        navBarStyle: NavBarStyle.style3,
        items: _navBarsItems(),
        screens: const [
          ExplorePage(),
          FavoritesPage(),
          BookmarkPage(),
          SettingPage(),
        ],
      ),
    );
  }
}
