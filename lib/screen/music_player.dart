import 'package:flutter/material.dart';

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({Key? key}) : super(key: key);

  @override
  _MusicPlayerState createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            child: Container(height: double.infinity, child: Text("Playlist"))),
        Container(
            color: Colors.green,
            height: 84,
            child: Row(
              children: [
                SizedBox(child: const Text("Song")),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 50),
                        child: LinearProgressIndicator(value: 1.0),
                      ),
                      (Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          IconButton(
                              onPressed: null,
                              iconSize: 42,
                              icon: Icon(Icons.fast_rewind_rounded)),
                          IconButton(
                              onPressed: null,
                              iconSize: 42,
                              icon: Icon(Icons.play_circle_fill_rounded)),
                          IconButton(
                              onPressed: null,
                              iconSize: 42,
                              icon: Icon(Icons.fast_forward_rounded))
                        ],
                      )),
                    ],
                  ),
                )
              ],
            ))
      ]),
    );
  }
}
