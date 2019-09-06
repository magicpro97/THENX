import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thenx/features/home/ui/widgets/thenx_background_image.dart';
import 'package:thenx/features/home/ui/widgets/thenx_reaction.dart';

class THENXHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          THENXBackgroundImage(
            imageUrl:
                'https://www.elleman.vn/wp-content/uploads/2019/03/27/phong-gym-elle-man-feature.jpg',
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(5.0)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "WORKOUT OF THE DAY",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "SEPTEMBER 06, 2019",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Rep building",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "SHOULDERS",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        THENXReaction(),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
