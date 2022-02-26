import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';

part 'detail_manga_page_children.dart';

class DetailMangaPage extends StatelessWidget {
  const DetailMangaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
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
      bottomSheet: bottomContentDetailManga(),
    );
  }
}
