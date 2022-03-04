import 'package:flutter/material.dart';
import 'package:manga_app/data/comic.dart';

class ItemTrendingManga extends StatelessWidget {
  const ItemTrendingManga({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    double newWidth = MediaQuery.of(context).size.width / 2;
    return SizedBox(
      width: newWidth,
      child: Wrap(
        runSpacing: 8.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: double.infinity,
              height: 200.0,
              child: Image.asset(
                comic.poster,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Expanded(
            child: Text(
              comic.name,
              maxLines: 2,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
