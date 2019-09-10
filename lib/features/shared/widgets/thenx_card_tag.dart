import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class THENXCardTag extends StatelessWidget {
  final String content;
  final TextStyle contentStyle;
  final double backgroundColorOpacity;
  final EdgeInsetsGeometry padding;
  final Widget button;

  const THENXCardTag({Key key,
    @required this.content,
    this.backgroundColorOpacity,
    this.contentStyle,
    this.padding,
    this.button})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent.withOpacity(backgroundColorOpacity ?? 1),
        borderRadius: BorderRadius.horizontal(right: Radius.circular(5.0)),
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.all(8.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "$content",
                  style: contentStyle,
                  textAlign: TextAlign.center,
                ),
                button != null ? button : Container(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
