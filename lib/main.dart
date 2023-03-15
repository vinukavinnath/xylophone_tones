import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

void playSound(int tone) {
  final player = AudioPlayer();
  player.play(
    AssetSource('note$tone.wav'),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Expanded(
            child: Column(
              children: <Widget>[
                customButton(Colors.red,1),
                customButton(Colors.orange,2),
                customButton(Colors.yellow,3),
                customButton(Colors.green,4),
                customButton(Colors.blue,5),
                customButton(Colors.indigo,6),
                customButton(Colors.purple,7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Expanded customButton(Color color,int index){
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
          padding: EdgeInsets.zero),
      onPressed: () {
        playSound(index);
      },
      child: Container(
        color: color,
        width: double.infinity,
      ),
    ),
  );
}
