import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';
import 'package:manga_app/core/widgets/item_favorite.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const ItemFavorite();
              },
            ),
          ],
        ),
      ),
    );
  }
}
