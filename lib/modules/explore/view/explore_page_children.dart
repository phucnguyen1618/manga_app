part of 'explore_page.dart';

extension ExplorePageChildren on ExplorePage {
  Widget _menuApp() {
    return Column(
      children: const [
        ListTile(
          leading: Icon(
            Icons.explore_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Explore Comic',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Favorites',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.account_circle_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Author',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: Text(
            'Search',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Notifications',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.settings_outlined,
            color: Colors.black,
          ),
          title: Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.logout,
            color: Colors.black,
          ),
          title: Text(
            'Sign out',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  Widget _headerMenuApp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const FlutterLogo(
              size: 56.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'MANGA APP',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    'Version 1.0.0',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Text(
          'Ứng dụng đọc truyện tranh online.',
          style: TextStyle(
              color: Colors.grey,
              fontSize: 14.0,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16.0,
        ),
        const Divider(
          height: 1.0,
          color: Colors.grey,
        ),
      ],
    );
  }

  Widget _titleAppBar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Chào buổi sáng',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 4.0,
        ),
        Text(
          'Nguyen Hoang Phuc',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
