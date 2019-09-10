import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsReaction extends StatelessWidget {
  const NewsReaction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reactionInfoColor = Colors.grey;
    final dotSize = 6.0;
    final reactionStyle = TextStyle(
      color: reactionInfoColor,
    );

    return Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.heart),
        _buildSpace(),
        _buildSpace(),
        Icon(FontAwesomeIcons.comment),
        Expanded(
          child: Container(),
        ),
        Text(
          "13 likes",
          style: reactionStyle,
        ),
        _buildSpace(),
        Icon(
          Icons.lens,
          size: dotSize,
        ),
        _buildSpace(),
        Text(
          "No comment",
          style: reactionStyle,
        ),
      ],
    );
  }

  static SizedBox _buildSpace() => SizedBox(
        width: 8.0,
      );
}
