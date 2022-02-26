import 'package:flutter/material.dart';
import 'package:manga_app/core/widgets/item_recommended.dart';

part 'genres_page_children.dart';

class GenresPage extends StatelessWidget {
  const GenresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ItemRecommended();
          }),
    );
  }
}
