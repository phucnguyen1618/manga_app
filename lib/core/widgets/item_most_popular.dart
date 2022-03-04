import 'package:flutter/material.dart';

import '../../data/comic.dart';

class ItemMostPopular extends StatelessWidget {
  const ItemMostPopular({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120.0,
      height: 300.0,
      child: Wrap(
        runSpacing: 4.0,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(
                comic.poster,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Text(
              comic.name,
              maxLines: 2,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          const Text(
            'Action, Adventure',
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 10.5,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
