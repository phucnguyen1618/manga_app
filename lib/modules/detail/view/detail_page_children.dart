part of 'detail_page.dart';

extension DetailPageChildren on DetailPage {

  Widget bottomContentDetailManga() {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          width: double.infinity,
          height: 450.0,
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
              TabBarView(children: [
                showInformationManga(),
                showChapterManga(),
              ])
            ],
          ),
        ),
      ),
    );
  }

  Widget showInformationManga() {
    return Container(
      color: Colors.redAccent,
      child: const Center(
        child: Text('Hello World'),
      ),
    );
  }

  Widget showChapterManga() {
    return ListView.builder(itemBuilder: (context, index){
      return const ListTile(
        title: Text('Title'),
      );
    });
  }
}
