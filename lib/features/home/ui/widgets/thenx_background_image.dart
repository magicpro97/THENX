import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class THENXBackgroundImage extends StatelessWidget {
  final String imageUrl;

  const THENXBackgroundImage({Key key, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: CachedNetworkImage(
              placeholder: (context, url) => CircularProgressIndicator(),
              imageUrl: imageUrl,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
        ],
    );
  }
}
