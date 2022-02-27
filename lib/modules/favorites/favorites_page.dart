import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';
import 'package:manga_app/core/widgets/item_favorite.dart';
import 'package:manga_app/core/widgets/item_top_author.dart';
import 'package:manga_app/core/widgets/item_trending_manga.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  int totalCount = 6;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildTopFavoriteManga(),
              _buildTopTrendingManga(),
              _buildTopAuthorList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopFavoriteManga() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text(
            'Top Favorite',
            style: TextStyle(
              fontSize: 18.0,
              color: AppColor.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: IconButton(
            icon: const Icon(Icons.arrow_forward),
            color: Colors.white,
            onPressed: () {},
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: 240.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ItemFavorite();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildTopTrendingManga() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            'Trending Manga',
            style: TextStyle(
              fontSize: 18.0,
              color: AppColor.textColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Text(
            '(3.650)',
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.grey,
            ),
          ),
        ),
        GridView.builder(
          itemCount: totalCount,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 32.0,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return const ItemTrendingManga(image: 'assets/images/conan.jpg');
          },
        ),
        const SizedBox(
          height: 28.0,
        ),
        InkWell(
          onTap: () {
            setState(() {
              totalCount = 10;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'View more',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTopAuthorList() {
    return Column(
      children: [
        const ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(
            'Top Author',
            style: TextStyle(
              color: AppColor.textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const ItemTopAuthor();
            },
          ),
        ),
      ],
    );
  }
}
