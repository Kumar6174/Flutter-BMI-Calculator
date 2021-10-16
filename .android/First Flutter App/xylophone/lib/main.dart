import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  //soundButton is func to create buttons and playing audio.
  Expanded soundButton({required Color color, required int soundNum}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        onPressed: () {
          final player = AudioCache();
          player.play('note$soundNum.wav');
        },
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                soundButton(color: Colors.red, soundNum: 1),
                soundButton(color: Colors.orange, soundNum: 2),
                soundButton(color: Colors.yellow, soundNum: 3),
                soundButton(color: Colors.blue, soundNum: 4),
                soundButton(color: Colors.green, soundNum: 5),
                soundButton(color: Colors.greenAccent, soundNum: 6),
                soundButton(color: Colors.redAccent, soundNum: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
