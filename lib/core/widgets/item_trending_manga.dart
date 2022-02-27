import 'package:flutter/material.dart';

class ItemTrendingManga extends StatelessWidget {
  const ItemTrendingManga({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 8.0,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: SizedBox(
            height: 200.0,
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Expanded(
          child: Text(
            'Detective Conan: The Scarlet Bullet',
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
