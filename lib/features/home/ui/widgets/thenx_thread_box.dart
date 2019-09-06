import 'package:flutter/material.dart';
import 'package:thenx/features/home/ui/widgets/thenx_thread_item.dart';

class THENXThreadBox extends StatelessWidget {
  final Icon icon;
  final String title;

  const THENXThreadBox({Key key, this.icon, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, bottom: 8.0),
      child: SizedBox(
        height: 225.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _buildTopComponent(),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => THENXThreadItem(),
                itemCount: 4,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopComponent() {
    return Row(
      children: <Widget>[
        icon ?? Container(),
        SizedBox(
          width: 10.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Expanded(
          child: Container(),
        ),
        Text(
          "VIEW ALL",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: 8.0,
        ),
      ],
    );
  }
}
