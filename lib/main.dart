import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNum){
    final player = AudioCache();
    player.play('note$soundNum.wav');
  }

  Expanded createButton(int soundNum, Color clr){
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(clr),
        ),
        onPressed: () {
          playSound(soundNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                createButton(1, Colors.red),
                createButton(2, Colors.orange),
                createButton(3, Colors.yellow),
                createButton(4, Colors.green),
                createButton(5, Colors.teal),
                createButton(6, Colors.blue),
                createButton(7, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
