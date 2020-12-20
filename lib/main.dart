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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        generateButton(Colors.teal, 1),
        generateButton(Colors.red, 2),
        generateButton(Colors.orangeAccent, 3),
        generateButton(Colors.purple, 4),
        generateButton(Colors.white, 5),
        generateButton(Colors.green, 6),
        generateButton(Colors.blue, 7),
      ],
    );
  }
}

Widget generateButton(Color color, int noteNumber) {
  final player = AudioCache();
  return Expanded(
    child: Container(
      width: double.infinity,
      child: FlatButton(
        color: color,
        onPressed: () {
          player.play("note$noteNumber.wav");
        },
        child: Container(),
      ),
    ),
  );
}
