import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MusicPlay());
}

class MusicPlay extends StatelessWidget {
  void audioPlayerSerial(int audioPlayNumber) {
    final player = AudioCache();
    player.play('note$audioPlayNumber.wav');
  }

  Widget playerBulder(Color color, int inputNumber) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          audioPlayerSerial(inputNumber);
        },
        child: Text('Click here'),
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
              children: [
                playerBulder(Colors.blue, 1),
                playerBulder(Colors.brown, 2),
                playerBulder(Colors.purple, 3),
                playerBulder(Colors.yellow, 4),
                playerBulder(Colors.green, 5),
                playerBulder(Colors.orange, 6),
                playerBulder(Colors.pink, 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
