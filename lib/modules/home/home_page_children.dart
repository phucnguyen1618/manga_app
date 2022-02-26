part of 'home_page.dart';

extension HomePageChildren on HomePage {

  Widget _titleAppBar() {
    return const ListTile(
      minLeadingWidth: 16.0,
      contentPadding: EdgeInsets.zero,
      leading: CircleAvatar(
        backgroundColor: Colors.amber,
        child: FlutterLogo(),
      ),
      title: Text(
        'Good morning',
        style: TextStyle(
          color: Colors.white,
          fontSize: 14.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        'Nguyễn Hoàng Phúc',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.explore),
        title: "Explore",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.favorite_border),
        title: "Favorites",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.bookmark),
        title: "Bookmark",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.settings),
        title: "Settings",
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        inactiveColorSecondary: Colors.purple,
      ),
    ];
  }


}
