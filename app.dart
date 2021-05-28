import 'package:flutter/material.dart';
import 'package:audioplayer/audioplayer.dart';

Myapp1() {
  AudioPlayer audioPlugin = AudioPlayer();
  audio() {
    audioPlugin
        .play('https://www.soundhelix.com/examples/mp3/SoundHelix-Song-9.mp3');
  }

  var myhome = Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.amber,
      title: Text(
        'Song Player',
        style: TextStyle(color: Colors.deepOrange, fontStyle: FontStyle.italic),
      ),
      actions: <Widget>[Icon(Icons.music_note)],
    ),
    body: Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(horizontal: 50),
                width: 390,
                height: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  // color: Colors.redAccent,
                ),
                child: Image.network(
                    'https://images.pexels.com/photos/807598/pexels-photo-807598.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')),
            Container(
                //padding: EdgeInsets.symmetric(: 0),
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child:
                    FlatButton(onPressed: audio, child: Text('play button'))),
            Container(
                width: 100,
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: FlatButton(
                    onPressed: audioPlugin.pause, child: Text('pause button'))),
            Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
                child: FlatButton(
                    onPressed: audioPlugin.stop, child: Text('stop button'))),
          ],
        ),
      ),
    ),
  );

  return MaterialApp(home: myhome);
}
