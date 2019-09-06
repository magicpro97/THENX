import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thenx/features/home/ui/widgets/thenx_reaction_item.dart';

class THENXReaction extends StatelessWidget {
  final double size;

  const THENXReaction({Key key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      fontSize: size,
      color: Colors.white,
    );

    return SizedBox(
      height: size,
      child: Container(
        child: Row(
          children: <Widget>[
            THENXReactionItem(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  size: size,
                  color: Colors.white,
                ),
                text: Text(
                  "117",
                  style: textStyle,
                )),
            SizedBox(
              width: 10.0,
            ),
            THENXReactionItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                size: size,
                color: Colors.white,
              ),
              text: Text(
                "9",
                style: textStyle,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
