import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/constant/app_color.dart';
import 'package:manga_app/modules/detail/author/controller/detail_author_controller.dart';
import 'package:manga_app/shared/widgets/item_author_manga_widget.dart';

part 'detail_author_page_children.dart';

class DetailAuthorPage extends StatelessWidget {
  const DetailAuthorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailAuthorController());
    return Scaffold(
      backgroundColor: Constant.backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Constant.backgroundColor,
        title: const Text(
          'Detail Author',
          style: TextStyle(color: Constant.textColor, fontSize: 16.0),
        ),
        leading: IconButton(
          onPressed: () => controller.onBack(),
          icon: const Icon(
            Icons.arrow_back,
            color: Constant.iconColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Constant.iconColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            showDetailAuthor(),
            showListMangaByAuthor(),
          ],
        ),
      ),
    );
  }
}
