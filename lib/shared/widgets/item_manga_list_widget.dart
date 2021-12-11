import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app/modules/explore/controller/explore_controller.dart';
import 'package:manga_app/routes/app_pages.dart';

class ItemMangaListWidget extends StatelessWidget {
  const ItemMangaListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ExploreController controller = Get.find<ExploreController>();
    return Container(
      margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.DETAIL),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.asset(
                    'assets/images/kimetsu_no_yaiba.jpg',
                    width: double.infinity,
                    height: 180,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  right: 10.0,
                  top: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
                      child: Text(
                        'Chapter 314',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),),
                Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 30.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Manhua',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Thám tử lừng danh Conan',
                    style: TextStyle(color: Colors.black, fontSize: 16.0,),
                  ),
                  Text(
                    '45 Minutes Ago',
                    style: TextStyle(color: Color(0xFF757575), fontSize: 14.0,),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
