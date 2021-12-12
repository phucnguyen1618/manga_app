import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/modules/explore/view/explore_page.dart';
import 'package:manga_app/modules/favorites/view/favorites_page.dart';
import 'package:manga_app/modules/genres/view/genres_page.dart';
import 'package:manga_app/modules/home/controller/home_controller.dart';

part 'home_page_children.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      key: controller.endDrawerKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: FlutterLogo(),
        ),
        title: _titleAppBar(),
        actions: [
          IconButton(
            onPressed: () => controller.openDrawerMenu(),
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ExplorePage(),
          FavoritesPage(),
          GenresPage(),
        ],
      ),
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => controller.closeDrawerMenu(),
              child: SafeArea(
                left: true,
                right: true,
                top: true,
                bottom: false,
                child: Card(
                  margin: const EdgeInsets.all(16.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(21.0),
                      side: const BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      )),
                  child: Container(
                    alignment: Alignment.center,
                    width: 42.0,
                    height: 42.0,
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ),
            _menuApp(controller),
          ],
        ),
      ),
    );
  }
}
