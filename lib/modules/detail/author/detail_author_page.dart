import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';
import 'package:manga_app/core/widgets/item_author_manga_widget.dart';

part 'detail_author_page_children.dart';

class DetailAuthorPage extends StatelessWidget {
  const DetailAuthorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColor.backgroundColor,
        title: const Text(
          'Detail Author',
          style: TextStyle(color: AppColor.textColor, fontSize: 16.0),
        ),
        leading: IconButton(
          onPressed: (){},
          icon: const Icon(
            Icons.arrow_back,
            color: AppColor.iconColor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: AppColor.iconColor,
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
