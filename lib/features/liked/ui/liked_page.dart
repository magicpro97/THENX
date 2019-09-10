import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thenx/features/liked/ui/widgets/content_card.dart';
import 'package:thenx/features/liked/ui/widgets/title_box.dart';

class LikedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = Colors.black;
    final h1Style = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0);
    final h2Style = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18.0);
    final h3Style = TextStyle(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0);
    final contentStyle = TextStyle(
        color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 16.0);
    final buttonColors = Colors.blue;

    return Container(
      color: backgroundColor,
      child: Column(
        children: <Widget>[
          Container(
            height: 60.0,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                  left: 10.0,
                  right: 10.0,
                ),
                child: Text(
                  "Liked Programs & Workouts",
                  style: h1Style,
                ),
              ),
            ),
          ),
          Divider(
            height: 1.0,
            color: Colors.grey,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Exercieses, programs and programs that you like are orgainized here by category",
                    style: contentStyle,
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  TitleBox(
                    contentCards: [
                      ContentCard(
                        content:
                            "Programs & Techniques that you like will appear here",
                        contentStyle: contentStyle,
                      )
                    ],
                    title: "Programs & Techniques",
                    titleStyle: h2Style,
                  ),
                  TitleBox(
                    contentCards: <ContentCard>[
                      ContentCard(
                        content: "Daily workout that you like will appear here",
                        contentStyle: contentStyle,
                        buttons: RaisedButton(
                          onPressed: () {},
                          child: Text(
                            "See Workout Library",
                            style: h3Style,
                          ),
                          color: buttonColors,
                        ),
                      )
                    ],
                    title: "Featured Workouts",
                    titleStyle: h2Style,
                  ),
                  TitleBox(
                    title: "Workouts",
                    titleStyle: h2Style,
                    contentCards: [
                      ContentCard(
                        content:
                            "Workouts, requirements & lessions that you like will appear here",
                        contentStyle: contentStyle,
                      ),
                      ContentCard(
                        content: "You don't have any saved exersiced yet",
                        contentStyle: contentStyle,
                        buttons: RaisedButton(
                          child: Text(
                            "See Exercises Library",
                            style: h3Style,
                          ),
                          color: buttonColors,
                          onPressed: () {},
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
