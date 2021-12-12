import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:manga_app/constant/app_color.dart';
import 'package:manga_app/shared/widgets/item_top_author_widget.dart';
import 'package:manga_app/shared/widgets/item_trending_manga_widget.dart';

part 'explore_page_children.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Constant.backgroundSearchColor,
                borderRadius: BorderRadius.circular(16.0),
              ),
              margin: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search manga...,',
                  hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  suffixIcon: Icon(
                    Icons.tune_outlined,
                    color: Colors.black,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, top: 24.0, right: 16.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Trending Manga',
                    style: TextStyle(
                      color: Constant.textColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Constant.iconColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0),
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return const ItemTrendingMangaWidget();
                  }),
            ),
            bottomSheetTopAuthor(),
          ],
        ),
      ),
    );
  }
}
