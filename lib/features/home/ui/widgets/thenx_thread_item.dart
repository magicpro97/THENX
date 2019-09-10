import 'package:flutter/material.dart';
import 'package:thenx/features/home/ui/widgets/thenx_reaction_small.dart';
import 'package:thenx/features/shared/widgets/thenx_background_image.dart';

class THENXThreadItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 300,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildTopComponent(),
                    Expanded(
                      child: Container(),
                    ),
                    _buildBottomComponent(),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomComponent() {
    return SizedBox(
      width: 200.0,
      child: Text(
        "How To Get Fit From Home (No Equiment Needed)",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget _buildTopComponent() {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.ac_unit,
            size: 30.0,
            color: Colors.white,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "OFFICIALTHENX",
                style: TextStyle(color: Colors.grey[300]),
              ),
              Text(
                "September 01, 2019",
                style: TextStyle(color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(),
        ),
        THENXReactionSmall(),
      ],
    );
  }
}
