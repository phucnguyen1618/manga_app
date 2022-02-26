import 'package:flutter/material.dart';
import 'package:manga_app/core/constant/app_color.dart';
import 'package:manga_app/core/widgets/item_recommended.dart';
import 'package:manga_app/core/widgets/item_most_popular.dart';
import 'package:manga_app/core/widgets/item_new_release.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
          child: Column(
            children: [
              _buildNewRelease(pageController),
              const SizedBox(
                height: 32.0,
              ),
              _buildMostPopular(),
              const SizedBox(
                height: 32.0,
              ),
              _buildRecommended(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNewRelease(PageController controller) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(bottom: 4.0),
          title: const Text(
            'New Release!',
            style: TextStyle(
              color: AppColor.textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: const Text(
            'Read the latest comic recommendations',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: TextButton(
            onPressed: () {},
            child: const Text(
              'Show more',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              height: 230,
              child: PageView.builder(
                controller: controller,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ItemNewRelease();
                },
              ),
            ),
            Positioned(
              left: 16.0,
              bottom: 16.0,
              child: SmoothPageIndicator(
                controller: controller,
                count: 5,
                effect: const ExpandingDotsEffect(
                  dotHeight: 8.0,
                  dotWidth: 8.0,
                  activeDotColor: Colors.blueAccent,
                  dotColor: Colors.grey,
                  // strokeWidth: 5,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMostPopular() {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(bottom: 4.0),
          title: const Text(
            'Most Popular Comics',
            style: TextStyle(
              color: AppColor.textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: const Text(
            'Lots of interesting comics here',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: TextButton(
            onPressed: () {},
            child: const Text(
              'Show more',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 350.0,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 72.0,
              crossAxisSpacing: 12.0,
            ),
            itemBuilder: (context, index) {
              return const ItemMostPopular();
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRecommended() {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.only(bottom: 4.0),
          title: const Text(
            'Recommended',
            style: TextStyle(
              color: AppColor.textColor,
              fontSize: 18.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          subtitle: const Text(
            "Don't miss this week's update",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: TextButton(
            onPressed: () {},
            child: const Text(
              'Show more',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 200.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const ItemRecommended();
            },
          ),
        ),
      ],
    );
  }
}
