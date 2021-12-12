import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/modules/genres/controller/genres_controller.dart';
import 'package:manga_app/shared/widgets/item_manga_list_widget.dart';

part 'genres_page_children.dart';

class GenresPage extends StatelessWidget {
  const GenresPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GenresController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const ItemMangaListWidget();
          }),
    );
  }
}
