import 'package:flutter/material.dart';

class THENXCardTag extends StatelessWidget {
  final String content;
  final double backgroundColorOpacity;

  const THENXCardTag(
      {Key key, @required this.content, this.backgroundColorOpacity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(backgroundColorOpacity ?? 1),
        borderRadius: BorderRadius.horizontal(right: Radius.circular(5.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "$content",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
