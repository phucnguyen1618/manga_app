import 'package:flutter/material.dart';
import 'package:manga_app/constant/app_color.dart';
import 'package:manga_app/shared/widgets/item_manga_favorite_widget.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Constant.backgroundSearchColor,
            borderRadius: BorderRadius.circular(16.0),
          ),
          margin: const EdgeInsets.all(16.0),
          padding: const EdgeInsets.only(left: 16.0),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'All Manga',
              hintStyle: TextStyle(color: Colors.black, fontSize: 14.0),
              suffixIcon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ItemMangeFavoriteWidget();
              }),
        ),
      ],
    ));
  }
}
