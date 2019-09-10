import 'package:flutter/material.dart';
import 'package:thenx/features/liked/ui/liked_page.dart';
import 'package:thenx/features/master/widgets/thenx_bottom_app_bar.dart';

class MasterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: Container(), preferredSize: Size.fromHeight(0.0)),
      body: LikedPage(),
      bottomNavigationBar: THENXBottomNavBar(),
    );
  }
}
