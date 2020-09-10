import 'package:flutter/cupertino.dart';

class CustomGrid extends StatelessWidget {
  final List<Widget> widgets;

  CustomGrid(this.widgets);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (int i = 0; i < this.widgets.length; i += 2)
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: this.widgets.elementAt(i),
                ),
              ),
              i >= this.widgets.length - 1
                  ? Expanded(
                      flex: 1,
                      child: Container(),
                    )
                  : Expanded(
                      flex: 1,
                      child: Padding(
                        child: this.widgets.elementAt(i + 1),
                        padding: EdgeInsets.all(8.0),
                      ),
                    ),
            ],
          )
      ],
    );
  }
}
