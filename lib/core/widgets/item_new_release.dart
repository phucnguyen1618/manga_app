import 'dart:ui';

import 'package:flutter/material.dart';

class ItemNewRelease extends StatelessWidget {
  const ItemNewRelease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230.0,
      margin: const EdgeInsets.only(right: 8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.white,
      ),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            left: 0.0,
            right: 0.0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
              ),
              foregroundDecoration: BoxDecoration(
                color:
                    Color.fromARGB(Color.getAlphaFromOpacity(0.5), 15, 23, 42),
              ),
              child: Image.asset(
                'assets/images/conan.jpg',
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 18.0, vertical: 24.0),
              child: Wrap(
                direction: Axis.vertical,
                runSpacing: 32.0,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'OVERLORD',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Action, Mystery, Comedy',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                      SizedBox(
                        height: 24.0,
                      ),
                      Text(
                        'Synopsis',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      SizedBox(
                        width: 160.0,
                        child: Text(
                          'The final hour of the popular virtual reality game Yggdrasil has come. However, Momonga, a powerful',
                          maxLines: 3,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: SizedBox(
                      height: 180,
                      width: 120,
                      child: Image.asset(
                        'assets/images/conan.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
