import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';

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
              color: AppColor.textColor,
              fontSize: 16.0,
            ),
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
