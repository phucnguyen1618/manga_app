import 'dart:developer';
import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/constant/app_color.dart';
import 'package:manga_app/modules/detail/manga/controller/detail_manga_controller.dart';
import 'package:manga_app/shared/widgets/item_image_manga_widget.dart';

part 'detail_manga_page_children.dart';

class DetailMangaPage extends StatelessWidget {
  const DetailMangaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailMangaController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => controller.onBack(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Detail Comic',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 16.0),
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: controller.imageList.map((item) => ItemImageMangaWidget(image: item)).toList(),
        ),
      ),
      bottomSheet: bottomContentDetailManga(),
    );
  }
}
