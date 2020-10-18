import 'package:flutter/material.dart';

class MusicLoadButton extends StatefulWidget {
  final Function onPressed;

  const MusicLoadButton(this.onPressed);

  @override
  State<StatefulWidget> createState() => MusicLoadButtonState();
}

class MusicLoadButtonState extends State<MusicLoadButton> {
  bool loading = false;

  onPressed() async {
    this.loading = true;
    setState(() {});
    var result = "[]";
    try {
      result = await widget.onPressed();
    } catch (on, st) {
      print(st.toString());
    } finally {
      this.loading = false;
    }
    setState(() {});
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: this.onPressed,
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text("load more"),
          ),
          this.loading
              ? SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation(Colors.black),
                  ),
                )
              : Icon(
                  Icons.refresh,
                  color: Colors.black,
                )
        ],
      ),
    );
  }
}
