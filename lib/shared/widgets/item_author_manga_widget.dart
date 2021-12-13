import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/constant/app_color.dart';
import 'package:manga_app/modules/explore/controller/explore_controller.dart';

class ItemAuthorMangaWidget extends StatelessWidget {
  const ItemAuthorMangaWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: SizedBox(
            height: 140,
            width: 160,
            child: Image.asset(
              'assets/images/one_piece.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'One Piece - Đảo Hải Tặc',
            style: TextStyle(
              color: Constant.textColor,
              fontSize: 16.0,
            ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
