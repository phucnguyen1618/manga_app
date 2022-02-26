part of 'detail_author_page.dart';

extension DetailAuthorPageChildren on DetailAuthorPage {
  Widget showDetailAuthor() {
    const textContent =
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 50,
                ),
                const SizedBox(
                  width: 16.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Turtle Me',
                      style:
                          TextStyle(color: AppColor.textColor, fontSize: 18.0),
                    ),
                    Text(
                      '44/5',
                      style:
                          TextStyle(color: AppColor.textColor, fontSize: 14.0),
                    )
                  ],
                )
              ],
            ),
          ),
          ExpandablePanel(
            header: const Text(
              'Author Information',
              style: TextStyle(
                color: AppColor.textColor,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            collapsed: const Text(
              textContent,
              maxLines: 3,
              style: TextStyle(
                color: AppColor.textColor,
                fontSize: 14.0,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            expanded: const Text(
              textContent,
              softWrap: true,
              style: TextStyle(
                color: AppColor.textColor,
                fontSize: 14.0,
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Divider(
            height: 1.0,
            color: AppColor.dividerColor,
          ),
          const SizedBox(
            height: 24,
          ),
          rowStatisticsByAuthor(),
        ],
      ),
    );
  }

  Widget rowStatisticsByAuthor() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [
            Text(
              '10',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Block',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Column(
          children: const [
            Text(
              '239',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 8.0,
            ),
            Text(
              'Followers',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          width: 150.0,
          height: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            gradient: const LinearGradient(colors: [
              AppColor.startColor,
              AppColor.endColor,
            ]),
          ),
          child: MaterialButton(
            onPressed: () {},
            child: const Text(
              'Follow',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget showListMangaByAuthor() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Manga',
                style: TextStyle(
                    color: AppColor.textColor,
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_horiz,
                  color: AppColor.iconColor,
                ),
              ),
            ],
          ),
          GridView.builder(
              shrinkWrap: true,
              itemCount: 10,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 16.0),
              itemBuilder: (context, index) {
                return const ItemAuthorMangaWidget();
              }),
        ],
      ),
    );
  }
}
