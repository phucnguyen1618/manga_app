import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/modules/detail/controller/detail_controller.dart';

part 'detail_page_children.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DetailController());
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => controller.onBack(),
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Detail Comic',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [

        ],
      ),
      bottomSheet: bottomContentDetailManga(),
    );
  }
}
