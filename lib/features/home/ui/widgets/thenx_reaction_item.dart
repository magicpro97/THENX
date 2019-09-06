import 'package:flutter/material.dart';

class THENXReactionItem extends StatelessWidget {
  final Icon icon;
  final Text text;

  const THENXReactionItem({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          icon,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: text,
          )
        ],
      ),
    );
  }
}
