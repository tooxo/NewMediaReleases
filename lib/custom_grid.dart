import 'package:flutter/cupertino.dart';

class CustomGrid extends StatelessWidget {
  final List<Widget> widgets;
  final int gridSize;

  CustomGrid(this.widgets, {this.gridSize = 3});

  Widget get empty => Flexible(
        flex: 1,
        child: Container(),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        for (int i = 0; i < this.widgets.length; i += this.gridSize)
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              for (int j = 0; j < this.gridSize; j++)
                this.widgets.length <= i + j
                    ? empty
                    : Flexible(
                        flex: 1,
                        child: Padding(
                          child: this.widgets.elementAt(i + j),
                          padding: EdgeInsets.all(8.0),
                        ),
                      ),
            ],
          )
      ],
    );
  }
}
