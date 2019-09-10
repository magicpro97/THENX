import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsAvatar extends StatelessWidget {
  final String url;

  const NewsAvatar({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = 40.0;
    final width = 40.0;
    final backgroundColor = Colors.transparent;

    return Container(
      height: height,
      width: width,
      child: CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(
          url,
        ),
        backgroundColor: backgroundColor,
      ),
    );
  }
}
