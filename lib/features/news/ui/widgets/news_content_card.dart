import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thenx/features/shared/widgets/thenx_background_image.dart';
import 'package:thenx/features/shared/widgets/thenx_card_tag.dart';

class NewsContentCard extends StatelessWidget {
  final String imageUrl;

  const NewsContentCard({Key key, @required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final borderRadius = 15.0;

    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius)),
      child: Stack(
        children: <Widget>[
          THENXBackgroundImage(
            imageUrl: imageUrl,
          ),
          Positioned.fill(child: _foregroundContent()),
        ],
      ),
    );
  }

  Widget _foregroundContent() {
    const topTagPadding = 20.0;
    const backgroundColorOpacity = 0.3;

    return Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: topTagPadding),
          child: THENXCardTag(
            content: "COMPLETE A WORKOUT",
            backgroundColorOpacity: backgroundColorOpacity,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: _contentLabel(),
        ),
      ],
    );
  }

  Widget _contentLabel() {
    final iconColor = Colors.white;

    final titleStyle = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0);

    final levelStyle = TextStyle(
      color: Colors.grey,
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.fitness_center,
          color: iconColor,
          size: 32.0,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Master Workout",
                style: titleStyle,
              ),
              Text(
                "Introduction Program",
                style: levelStyle,
              ),
            ],
          ),
      ],
    );
  }
}
