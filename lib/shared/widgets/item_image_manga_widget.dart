import 'package:flutter/material.dart';
import 'package:manga_app/constant/app_color.dart';

class ItemImageMangaWidget extends StatelessWidget {
  const ItemImageMangaWidget({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Stack(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fill,
              width: 300,
              height: 200,
            ),
            Positioned(
              left: 16.0,
              bottom: 16.0,
              child: Container(
                width: 80,
                height: 30,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Constant.backgroundColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(16.0),
                  ),
                ),
                child: const Text(
                  'Manga',
                  style: TextStyle(
                      color: Constant.textColor,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
