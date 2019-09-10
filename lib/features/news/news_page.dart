import 'package:flutter/material.dart';
import 'package:thenx/features/news/ui/widgets/news_item.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildTopPage(),
            NewsItem(),
            NewsItem(),
            NewsItem(),
          ],
        ),
      ),
    );
  }

  Widget _buildTopPage() {
    final iconColor = Colors.black;
    final iconSize = 30.0;
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: _buildTabBar(),
        ),
        Expanded(
          child: Container(),
        ),
        Icon(
          Icons.search,
          color: iconColor,
          size: iconSize,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(
            Icons.notifications_none,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ],
    );
  }

  TabBar _buildTabBar() {
    final indicatorColor = Colors.black;

    final labelStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: Colors.black,
    );

    final unselectedLabelStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: Colors.grey,
    );

    return TabBar(
      unselectedLabelStyle: unselectedLabelStyle,
      labelStyle: labelStyle,
      labelColor: Colors.black,
      indicatorColor: indicatorColor,
      isScrollable: true,
      labelPadding: EdgeInsets.only(left: 0, right: 0),
      tabs: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Tab(
            text: "Explore",
          ),
        ),
        Tab(
          text: "Feed",
        )
      ],
    );
  }
}
