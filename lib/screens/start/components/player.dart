import 'package:flutter/material.dart';

class Player extends StatefulWidget {
  @override
  _PlayerState createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool buttonStatus = false;

  _playPause() async {
    buttonStatus = !buttonStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[50],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(5),
            child: Container(
              color: Colors.black,
              width: 75,
              height: 75,
            ),
          ),
          IconButton(
            icon: Icon(Icons.skip_previous),
            onPressed: () {},
          ),
          IconButton(
            color: Theme.of(context).primaryColor,
            icon: Icon(buttonStatus ? Icons.pause : Icons.play_arrow),
            onPressed: () {
              setState(() {
                _playPause();
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.skip_next),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
