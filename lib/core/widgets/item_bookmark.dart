import 'package:flutter/material.dart';

class ItemBookmark extends StatelessWidget {
  const ItemBookmark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0.0,
          right: 0.0,
          top: 0.0,
          bottom: 0.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SizedBox(
                  height: 200,
                  child: Image.asset(
                    'assets/images/one_piece.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 4.0,),
              const Expanded(
                child: Text(
                  'One Piece - Đảo Hải Tặc',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 2,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
