import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thenx/features/home/ui/widgets/thenx_header.dart';
import 'package:thenx/features/home/ui/widgets/thenx_thread_box.dart';
import 'package:thenx/features/home/ui/widgets/thenx_thread_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            THENXHomeHeader(),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: THENXThreadBox(
                icon: Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.red,
                ),
                title: "Youtube Workouts",
              ),
            ),
            THENXThreadBox(
              title: "Programs",
            ),
            THENXThreadBox(
              title: "Technique guides",
            ),
            THENXThreadCard(text: "Workouts Library"),
            THENXThreadCard(
              text: "Exercises Library",
            ),
            THENXThreadCard(
              text: "Shop Equiqment",
            ),
          ],
        ),
      ),
    );
  }
}
