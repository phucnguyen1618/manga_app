import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/modules/explore/controller/explore_controller.dart';
import 'package:manga_app/shared/widgets/item_manga_list_widget.dart';

part 'explore_page_children.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ExploreController());
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
      endDrawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: _headerMenuApp(),
            ),
            _menuApp(),
          ],
        ),
      ),
      body: ListView.builder(itemBuilder: (context, index){
        return const ItemMangaListWidget();
      }),
    );
  }
}
