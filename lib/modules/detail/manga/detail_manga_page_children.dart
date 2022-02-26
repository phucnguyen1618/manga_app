part of 'detail_manga_page.dart';

extension DetailMangaPageChildren on DetailMangaPage {
  Widget bottomContentDetailManga() {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0),
            topRight: Radius.circular(24.0),
          ),
        ),
        width: double.infinity,
        height: 500.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(5.0),
              ),
              margin: const EdgeInsets.only(top: 16.0),
              width: 30.0,
              height: 5.0,
            ),
            const SizedBox(
              height: 32.0,
            ),
            const TabBar(
              padding: EdgeInsets.only(left: 16.0, right: 16.0),
              indicatorColor: Color(0xFF424f56),
              tabs: [
                Tab(
                  child: Text(
                    'Informations',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
                Tab(
                  child: Text(
                    'Chapter',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: SizedBox(
                height: 360,
                child: TabBarView(children: [
                  showInformationManga(),
                  showChapterManga(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget showInformationManga() {
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Martial Peak',
                        style:
                            TextStyle(color: Color(0xFF424f56), fontSize: 23.0),
                      ),
                      SizedBox(
                        height: 8.0,
                      ),
                      Text(
                        'Martial art, Action, Comedy & Romance',
                        style: TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ],
                  ),
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: const LinearGradient(colors: [
                        AppColor.startColor,
                        AppColor.endColor,
                      ]),
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    margin: const EdgeInsets.only(right: 4.0),
                    elevation: 2.0,
                    shadowColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, top: 16.0, bottom: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Rating',
                            style: TextStyle(
                                color: Color(0xFF424f56),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '+4.5',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(right: 4.0, left: 4.0),
                    elevation: 2.0,
                    shadowColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, top: 16.0, bottom: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Chapter',
                            style: TextStyle(
                                color: Color(0xFF424f56),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            '120+',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(left: 4.0),
                    elevation: 2.0,
                    shadowColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(18.0),
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(
                          left: 18.0, right: 18.0, top: 16.0, bottom: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Language',
                            style: TextStyle(
                                color: Color(0xFF424f56),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'ENG',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              const Text(
                'This is description manga. Cau chuyen noi ve mot cuon truyen no di ngao du khap cac tu sach. Cho den mot ngay no da tim duoc tu sach ma no muon o tren do mai mai thi khong may no da bi mot khach hang giau co mua di mat',
                style: TextStyle(
                    wordSpacing: 2.0,
                    height: 1.2,
                    overflow: TextOverflow.ellipsis),
                maxLines: 4,
              ),
              SafeArea(
                  left: true,
                  right: true,
                  bottom: true,
                  top: false,
                  child: showAuthorManga()),
            ],
          )),
    );
  }

  Widget showChapterManga() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text(
              'Chapter 314',
              style: TextStyle(color: Color(0xFF424f56), fontSize: 16.0),
            ),
            trailing: Text(
              '12/12/2020',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold),
            ),
          );
        });
  }

  Widget showAuthorManga() {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 16.0),
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: CircleAvatar(
          child: Image.asset(
            'assets/images/conan.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: const Text(
        'Author',
        style: TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
      ),
      subtitle: const Text(
        'by Takeda Shiru',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16.0,
        ),
      ),
      trailing: MaterialButton(
        color: const Color(0xFF424f56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        padding: const EdgeInsets.only(
            left: 16.0, right: 16.0, top: 10.0, bottom: 10.0),
        onPressed: () {
          log('Clicked');
        },
        child: const Text(
          'Read Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
