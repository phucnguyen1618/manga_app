part of 'explore_page.dart';

extension ExplorePageChildren on ExplorePage {
  Widget bottomSheetTopAuthor() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      width: double.infinity,
      height: 350.0,
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
            height: 16.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text(
                  'Top Author',
                  style: TextStyle(
                    color: Color(0xFF424f56),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 12.0),
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ItemTopAuthorWidget();
                    }),
              ),
            ],
          ),
          footerContinueReading(),
        ],
      ),
    );
  }

  Widget footerContinueReading() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: Container(
        margin: const EdgeInsets.only(top: 8.0, left: 2.0, right: 2.0),
        width: double.infinity,
        height: 154,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: const LinearGradient(colors: [
            Color(0xFFfa7b65),
            Color(0xFFfd6673),
          ]),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Continue Reading',
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0),
              height: 68.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24.0),
              ),
              child: ListTile(
                leading: const FlutterLogo(size: 34.0,),
                title: const Text(
                  'Martial Peak',
                  style: TextStyle(
                      color: Color(0xFF424f56),
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Chapter 213',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xFF424f56),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    log('Clicked');
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
