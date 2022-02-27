import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';

import '../../core/widgets/item_bookmark.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Your Collection',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: AppColor.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  childAspectRatio: 0.68,
                ),
                itemBuilder: (context, index) {
                  return const ItemBookmark();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
