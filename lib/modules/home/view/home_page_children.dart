part of 'home_page.dart';

extension HomePageChildren on HomePage {
  Widget _menuApp(HomeController controller) {
    return Column(
      children: [
        ListTile(
          leading: const Icon(
            Icons.explore_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Explore',
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
            controller.onItemMenuChange(0);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.favorite_border_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Favorites',
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
            controller.onItemMenuChange(1);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.category_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Genres',
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
            controller.onItemMenuChange(2);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
     //       controller.onItemMenuChange(4);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.settings_outlined,
            color: Colors.black,
          ),
          title: const Text(
            'Settings',
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
      //      controller.onItemMenuChange(5);
          },
        ),
        ListTile(
          leading: const Icon(
            Icons.logout,
            color: Colors.black,
          ),
          title: const Text(
            'Sign out',
            style: TextStyle(color: Colors.black),
          ),
          onTap: () {
   //         controller.onItemMenuChange(6);
          },
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
