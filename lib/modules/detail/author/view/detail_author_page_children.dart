part of 'detail_author_page.dart';

extension DetailAuthorPageChildren on DetailAuthorPage {
  Widget showDetailAuthor() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0, bottom: 8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const FlutterLogo(size: 50,),
              const SizedBox(
                width: 16.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Turtle Me',
                    style: TextStyle(color: Constant.textColor, fontSize: 18.0),
                  ),
                  Text(
                    '44/5',
                    style: TextStyle(color: Constant.textColor, fontSize: 14.0),
                  )
                ],
              )
            ],
          ),
        ),
        
      ],
    );
  }

  Widget showListMangaByAuthor() {
    return const SizedBox();
  }
}
