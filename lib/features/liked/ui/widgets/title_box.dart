import 'package:flutter/material.dart';
import 'package:thenx/features/liked/ui/widgets/content_card.dart';

class TitleBox extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final List<ContentCard> contentCards;

  const TitleBox(
      {Key key, @required this.title, this.contentCards, this.titleStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              title,
              style: titleStyle,
            ),
          ),
          ...contentCards,
        ],
      ),
    );
  }
}
