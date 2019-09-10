import 'package:flutter/material.dart';
import 'package:thenx/features/shared/widgets/thenx_background_image.dart';
import 'package:thenx/features/shared/widgets/thenx_card_tag.dart';

class ContentCard extends StatelessWidget {
  final String content;
  final TextStyle contentStyle;
  final Widget buttons;

  const ContentCard(
      {Key key, @required this.content, this.contentStyle, this.buttons})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SizedBox(
        height: 180.0,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: <Widget>[
              THENXBackgroundImage(
                imageUrl:
                    "https://kenhhomestay.com/wp-content/uploads/2018/11/phong-tap-gym-o-da-lat-1.jpg",
              ),
              THENXCardTag(
                content: content,
                contentStyle: contentStyle,
                backgroundColorOpacity: 0.6,
                padding: EdgeInsets.all(0.0),
                button: buttons,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
