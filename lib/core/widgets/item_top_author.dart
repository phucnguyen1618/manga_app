import 'package:flutter/material.dart';

class ItemTopAuthor extends StatelessWidget {
  const ItemTopAuthor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Image.asset(
              'assets/images/one_piece.jpg',
              fit: BoxFit.fill,
              width: 80.0,
              height: 80.0,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          const Text(
            'Jihyun',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),

        ],
      ),
    );
  }
}
