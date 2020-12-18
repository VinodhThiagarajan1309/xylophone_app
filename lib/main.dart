import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Xylophone"),
      ),
      body: PlaySound(),
    ),
  ));
}

class PlaySound extends StatelessWidget {
  // or as a local variable
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: buildXyloPhoneKeys(player),
    );
  }
}

List<Widget> buildXyloPhoneKeys(AudioCache player) {
  var xyloPhoneKeyColors = {
    Colors.red,
    Colors.orangeAccent,
    Colors.purple,
    Colors.white,
    Colors.yellow,
    Colors.blue,
    Colors.cyan
  };
  List<Widget> columnChildren = [];
  int j = 1;
  for (var i in xyloPhoneKeyColors) {
    columnChildren.add(
      Expanded(
        child: Container(
          width: double.infinity,
          child: FlatButton(
            color: i,
            onPressed: () {
              player.play("note$j.wav");
              j++;
            },
            child: Container(),
          ),
        ),
      ),
    );
  }

  return columnChildren;
}
