class Comic {
  String name;
  String poster;
  String background;
  List<String> genres;
  String synopsis;

  Comic(this.name, this.poster, this.background, this.genres, this.synopsis);
}

final comics = [
  Comic(
      'THÁM TỬ CONAN - VIÊN ĐẠN ĐỎ',
      'assets/images/poster/conan.jpg',
      'assets/images/background/background_conan.jpg',
      [
        'Anime',
        'Hành động',
        'Hài hước',
        'Trinh thám',
        'Tình cảm',
      ],
      'Cậu học sinh trung học 16 tuổi Shinichi Kudo bị biến thành cậu bé Conan Edogawa. Shinichi trong phần đầu của Thám tử lừng danh Conan được miêu tả là một thám tử học đường. Trong một lần đi chơi công viên "Miền Nhiệt đới" với cô bạn từ thuở nhỏ (cũng là bạn gái) Ran Mori , cậu bị dính vào vụ án một hành khách trên Chuyến tàu tốc hành trong công viên, Kishida , bị giết trong một vụ án cắt đầu rùng rợn. Cậu đã làm sáng tỏ vụ án và trên đường về nhà, chứng kiến một vụ làm ăn mờ ám của những người đàn ông mặc toàn đồ đen. Kudo bị phát hiện, bị đánh ngất sau đó những người đàn ông áo đen đã cho cậu uống một thứ thuốc độc chưa qua thử nghiệm là Apotoxin-4869 (APTX4869) với mục đích thủ tiêu cậu. Tuy nhiên chất độc đã không giết chết Kudo. Khi tỉnh lại, cậu bàng hoàng nhận thấy thân thể mình đã bị teo nhỏ trong hình dạng của một cậu học sinh tiểu học....'),
  Comic(
      'Kimetsu no Yaiba',
      'assets/images/poster/kimetsu_no_yaiba.jpg',
      'assets/images/background/background_kimetsu_no_yaiba.jpg',
      [
        'Manga',
        'Drama',
        'Fantasy',
        'Shounen',
      ],
      'Kimetsu no Yaiba – Tanjirou là con cả của gia đình vừa mất cha. Một ngày nọ, Tanjirou đến thăm thị trấn khác để bán than, khi đêm về cậu ở nghỉ tại nhà người khác thay vì về nhà vì lời đồn thổi về ác quỷ luôn rình mò gần núi vào buổi tối. Khi cậu về nhà vào ngày hôm sau, bị kịch đang đợi chờ cậu…'),
  Comic(
      'Naruto',
      'assets/images/poster/naruto.jpg',
      'assets/images/background/background_naruto.jpg',
      [
        'Action',
        'Adventure',
        'Comedy',
        'Drama',
        'Fantasy',
      ],
      'Bối cảnh Naruto xảy ra vào mười hai năm trước khi câu chuyện chính thức bắt đầu, một con hồ ly chín đuôi đã tấn công Konohagakure. Nó là một con quái vật có sức mạnh khủng khiếp, chỉ một cái vẫy từ một trong chín cái đuôi của nó có thể tạo ra những cơn sóng thần và san bằng nhiều ngọn núi. Nó gây ra sự hỗn loạn và giết chết rất nhiều người cho đến khi người đứng đầu làng Lá – Hokage đệ tứ – đã đánh bại nó bằng cách đổi lấy mạng sống của mình để phong ấn nó vào trong người một đứa trẻ mới sinh. Đứa trẻ đó tên là Uzumaki Naruto. Bộ truyện kể về cuộc hành trình đầy gian khổ với vô vàn khó khăn, thử thách của Naruto từ khi còn là một cậu bé tới khi trở thành một trong những nhẫn giả vĩ đại nhất. Không chỉ mô tả về một thế giới nhẫn giả huyền bí, Naruto còn mang trong nó nhiều ý nghĩa nhân sinh sâu sắc về tình bạn, tình đồng đội, tình yêu, ước mơ và hi vọng.'),
  Comic(
      'Yu - Gi - Oh! - Vua trò chơi',
      'assets/images/poster/yugioh.jpg',
      'assets/images/background/background_yugioh.jpg',
      [
        'Action',
        'Adventure',
        'Fantasy',
        'Shounen',
      ],
      'Yu-Gi-Oh! là câu chuyện kể về Yugi Muto, một học sinh trường Domino. Tính tình nhút nhát, hiền lành. Cậu là cháu nội của Surodoku Muto. Trước đây, ông cậu vốn là một kiện tướng chơi trò chơi cực kì xuất sắc. Từ nhỏ, ông cậu đã dạy cậu chơi các trò chơi, và ông còn cho cậu một bộ xếp hình. Trong khoảng gần bảy năm, cậu đã tìm tòi và đã lắp ráp được thành Trò chơi ngàn năm (Millennium Puzzle). Nhưng cậu đã không thể hoàn thành được vì mảnh chính của trò chơi bị Joey Wheeler (Katsuya Jonouchi) ném xuống nước vì muốn chơi xỏ Yugi. Nhưng sau đó, cảm kích vì Yugi đã dùng thân mình bảo vệ cậu trong một lần bị một thằng du côn đánh, họ trở thành bạn của nhau. Joey lặn xuống nước và lấy lại mảnh chính đưa cho ông nội Yugi. Cuối cùng, Trò chơi ngàn năm đã hoàn thành. Nhưng kể từ sau khi hoàn thành Trò chơi ngàn năm, Yugi đã xuất hiện một nhân cách khác mặc dù cậu không nhận ra, đó là Yami Yugi. Cho đến khi Dark Bakura, chủ sở hữu Vòng tròn trí tuệ ngàn năm (Millennium Ring) tìm cách hại Yugi và bạn của cậu trong một trò chơi chết người, thì cũng là lúc Yugi phát hiện ra Yami Yugi. Lúc đầu cậu rất hoảng sợ khi Yami Yugi chính là nhân cách thứ hai của mình. Nhưng sau đó họ trở thành bạn của nhau.'),
  Comic(
      'One Piece',
      'assets/images/poster/one_piece.jpg',
      'assets/images/background/background_one_piece.jpg',
      ['Action', 'Adventure', 'Comedy', 'Drama', 'Fantasy'],
      'One Piece là câu truyện kể về Luffy và các thuyền viên của mình. Khi còn nhỏ, Luffy ước mơ trở thành Vua Hải Tặc. Cuộc sống của cậu bé thay đổi khi cậu vô tình có được sức mạnh có thể co dãn như cao su, nhưng đổi lại, cậu không bao giờ có thể bơi được nữa. Giờ đây, Luffy cùng những người bạn hải tặc của mình ra khơi tìm kiếm kho báu One Piece, kho báu vĩ đại nhất trên thế giới. Trong One Piece, mỗi nhân vật trong đều mang một nét cá tính đặc sắc kết hợp cùng các tình huống kịch tính, lối dẫn truyện hấp dẫn chứa đầy các bước ngoặt bất ngờ và cũng vô cùng hài hước đã biến One Piece trở thành một trong những bộ truyện nổi tiếng nhất không thể bỏ qua. Hãy đọc One Piece để hòa mình vào một thế giới của những hải tặc rộng lớn, đầy màu sắc, sống động và thú vị, cùng đắm chìm với những nhân vật yêu tự do, trên hành trình đi tìm ước mơ của mình.'),
  Comic(
      'NGỌN LỬA RECCA',
      'assets/images/poster/recca.jpg',
      'assets/images/background/recca.jpg',
      [
        'Action',
        'Fantasy',
        'Manga',
        'Shounen',
      ],
      'Một cậu học sinh trung học rất mê ninja và luôn tự coi mình là 1 ninja. Một hôm, trên đường đi ...'),
];
