import 'package:flutter/material.dart';
import 'package:manga_app/modules/home/home_page.dart';
import 'package:manga_app/modules/home/home_provider.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Manga App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => HomeProvider()),
        ],
        child: const HomePage(),
      ),
    );
  }
}
