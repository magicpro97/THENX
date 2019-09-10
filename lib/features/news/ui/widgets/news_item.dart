import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thenx/features/news/ui/widgets/news_avatar.dart';
import 'package:thenx/features/news/ui/widgets/news_content_card.dart';
import 'package:thenx/features/news/ui/widgets/news_reaction.dart';

class NewsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        children: <Widget>[
          _buildTopContent(),
          NewsContentCard(
            imageUrl:
            "http://dulichvietnam.com.vn/data/D%E1%BB%A5ng-c%E1%BB%A5-gym-5.jpg",
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: NewsReaction(),
          )
        ],
      ),
    );
  }

  Row _buildTopContent() {
    final iconMoreColor = Colors.grey;
    return Row(
      children: <Widget>[
        NewsAvatar(url: "https://i.ytimg.com/vi/fUWrhetZh9M/maxresdefault.jpg"),
        _buildTitle(),
        Expanded(
          child: Container(),
        ),
        Icon(
          Icons.more_horiz,
          color: iconMoreColor,
        )
      ],
    );
  }

  Widget _buildTitle() {
    final usernameStyle = TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );

    final feelingStyle = TextStyle(
      color: Colors.grey,
    );

    final emotionStyle = TextStyle(
      fontWeight: FontWeight.bold,
    );

    final timeStyle = TextStyle(
      color: Colors.grey,
    );

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            Text(
              "Username",
              style: usernameStyle,
            ),
            Text(
              " is feeling",
              style: feelingStyle,
            ),
            Text(
              " 😍 Motivated",
              style: emotionStyle,
            ),
          ]),
          Text(
            "15 minutes ago",
            style: timeStyle,
          )
        ],
      ),
    );
  }
}
