import 'package:flutter/material.dart';
import 'package:manga_app/constant/app_color.dart';

class ItemMangeFavoriteWidget extends StatelessWidget {
  const ItemMangeFavoriteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:
          const EdgeInsets.only(bottom: 8.0, top: 8.0, left: 16.0, right: 16.0),
      shadowColor: Colors.grey,
      color: Constant.backgroundColor,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/conan.jpg',
                width: 60.0,
                height: 80.0,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Volcanic age',
                      style: TextStyle(
                        color: Constant.textColor,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Text(
                      'By Turtle me',
                      style: TextStyle(
                        color: Constant.textColor,
                        fontSize: 13.0,
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Text(
                      'Next chapter 87',
                      style: TextStyle(
                        color: Constant.textColor,
                        fontSize: 16.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: const [
                Icon(
                  Icons.cloud_download_outlined,
                  color: Constant.iconColor,
                ),
                SizedBox(
                  height: 32.0,
                ),
                Text(
                  '4,5k Views',
                  style: TextStyle(
                    color: Constant.textColor,
                    fontSize: 14.0,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
