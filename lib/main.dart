import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const Xylophone());
}

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bajate Raho"),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: const <Widget>[
                Clickplay(name:Colors.red,audionum:1),
                Clickplay(name:Colors.orange,audionum: 2),
                Clickplay(name:Colors.yellow,audionum:3),
                Clickplay(name:Colors.green,audionum:4),
                Clickplay(name:Colors.teal,audionum:5),
                Clickplay(name:Colors.blue,audionum:6),
                Clickplay(name:Colors.purple,audionum:7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Clickplay extends StatelessWidget {

  final int audionum;
  final Color name;

  const Clickplay({required this.name, required this.audionum}) ;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          final player = AudioCache();
          player.play('note$audionum.wav');
        },
        child: Container(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(0),
          color: name,
        ),
      ),
    );
  }
}
