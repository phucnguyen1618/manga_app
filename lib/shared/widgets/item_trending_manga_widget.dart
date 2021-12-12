import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/modules/explore/controller/explore_controller.dart';

class ItemTrendingMangaWidget extends StatelessWidget {
  const ItemTrendingMangaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ExploreController());
    return GestureDetector(
      onTap: () => controller.onItemTrendingMangaClicked(),
      child: Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                height: 120,
                width: 120,
                child: Image.asset(
                  'assets/images/conan.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Text(
                'Tham tu lung danh Conan'.replaceRange(10, 23, '...'),
                style: const TextStyle(
                  color: Color(0xFF424f56),
                  fontSize: 18.0,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'by Takeda',
                style: TextStyle(
                  color: Color(0xFF424f56),
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
