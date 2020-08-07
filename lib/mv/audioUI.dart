import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'audi1.dart';

AudioPlayer newPlayer = new AudioPlayer();
AudioCache audio = new AudioCache(fixedPlayer: newPlayer);
var play = 0;
var stop = 1;

playAudio() {
  if (play == 0 || stop == 1) {
    audio.play("puthdang.mp3");
    play = 1;
    stop = 0;
  }
}

pauseAudio() {
  if (play == 1) {
    newPlayer.pause();
    play = 0;
  }
}

stopAudio() {
  if (play == 1 && stop == 0) {
    newPlayer.stop();
    play = 0;
    stop = 1;
  }
}

class Audioo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade100,
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('images/d2.jpeg'),
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fitWidth,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0, 10),
                      spreadRadius: 0,
                      blurRadius: 50,
                    )
                  ],
                ),
              ),
              Text(
                "Album - DRB",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "Singer name _Unknown Artist",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              Slider(
                value: 10,
                onChanged: (v) {},
                max: 100,
                min: 0,
                inactiveColor: Colors.black87,
                activeColor: Colors.black54,
                // onChangeStart: myaudio(),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      iconSize: 25,
                      icon: Icon(FontAwesomeIcons.solidPauseCircle),
                      color: Colors.black87,
                      onPressed: pauseAudio,
                    ),
                    IconButton(
                      iconSize: 45,
                      icon: Icon(
                        FontAwesomeIcons.play,
                        color: Colors.black87,
                      ),
                      onPressed: playAudio,
                    ),
                    IconButton(
                      iconSize: 20,
                      icon: Icon(FontAwesomeIcons.stop),
                      onPressed: stopAudio,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Text(
                  "Charlie Puth - Dangerously",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(top: 10, bottom: 17),
                //color: Colors.black54,
              ),
              SizedBox(
                width: 100,
              ),
              Container(
                height: 35,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    IconButton(
                      iconSize: 15,
                      icon: Icon(FontAwesomeIcons.music),
                      color: Colors.black87,
                      onPressed: () {},
                    ),
                    IconButton(
                      iconSize: 15,
                      icon: Icon(
                        FontAwesomeIcons.backward,
                        color: Colors.black87,
                      ),
                      onPressed: null,
                    ),
                    IconButton(
                      iconSize: 15,
                      icon: Icon(
                        FontAwesomeIcons.forward,
                        color: Colors.black87,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Audi1()),
                        );
                      },
                    ),
                    IconButton(
                      iconSize: 15,
                      icon: Icon(Icons.favorite),
                      onPressed: () {},
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
