import 'package:flutter/material.dart';
import 'package:thenx/features/master/widgets/thenx_bottom_app_bar.dart';
import 'package:thenx/features/news/news_page.dart';

class MasterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: Container(), preferredSize: Size.fromHeight(0.0)),
      body: NewsPage(),
      bottomNavigationBar: THENXBottomNavBar(),
    );
  }
}
