import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../data/comic.dart';

class ItemFavorite extends StatelessWidget {
  const ItemFavorite({Key? key, required this.comic}) : super(key: key);

  final Comic comic;

  @override
  Widget build(BuildContext context) {
    double newWidth = MediaQuery.of(context).size.width - 32;
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: newWidth,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: SizedBox(
              width: double.infinity,
              height: 150.0,
              child: Image.asset(
                comic.background,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: SizedBox(
                  width: 60.0,
                  height: 60.0,
                  child: Image.asset(
                    comic.poster,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    comic.name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Action, Adventure, Comedy',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.white60,
                    ),
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RatingBar.builder(
                          allowHalfRating: true,
                          itemCount: 5,
                          initialRating: 5,
                          itemSize: 12.0,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                            );
                          },
                          onRatingUpdate: (newValue) {}),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const Text(
                        '5.0',
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
