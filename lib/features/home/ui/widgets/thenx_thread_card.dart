import 'package:flutter/material.dart';
import 'package:thenx/features/home/ui/widgets/thenx_background_image.dart';

class THENXThreadCard extends StatelessWidget {
  final String text;

  const THENXThreadCard({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      child: Container(
        width: double.infinity,
        height: 130.0,
        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          child: Stack(
            children: <Widget>[
              THENXBackgroundImage(
                imageUrl:
                    'https://www.elleman.vn/wp-content/uploads/2019/03/27/phong-gym-elle-man-feature.jpg',
              ),
              Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
