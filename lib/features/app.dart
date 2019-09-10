import 'package:flutter/material.dart';
import 'package:thenx/features/news/news_page.dart';
import 'package:thenx/features/shared/themes/theme_data.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//      statusBarColor: Colors.transparent,
//      statusBarIconBrightness: Brightness.dark,
//    ));
    return MaterialApp(
      title: 'THENX',
      theme: themeData,
      home: NewsPage(),
    );
  }
}
