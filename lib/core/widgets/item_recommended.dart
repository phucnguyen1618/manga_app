import 'package:flutter/material.dart';

import '../../data/comic.dart';

class ItemRecommended extends StatelessWidget {
  const ItemRecommended({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12.0),
      width: 120.0,
      height: 300.0,
      child: Wrap(
        runSpacing: 6.0,
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
              maxLines: 1,
              textAlign: TextAlign.start,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
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
