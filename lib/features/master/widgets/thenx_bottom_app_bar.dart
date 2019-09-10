import 'package:flutter/material.dart';

class THENXBottomNavBar extends StatelessWidget {
  const THENXBottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      backgroundColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.apps),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.show_chart),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.ac_unit),
          title: Container(),
        ),
      ],
    );
  }
}
