import 'chewie_list_item.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

//void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: ListView(
        children: <Widget>[
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
              'videos/IntroVideo.mp4',
            ),
            looping: true,
          ),
          /*
          ChewieListItem(
              videoPlayerController: VideoPlayerController.asset(
                'videos/IntroVideo.mp4',
              ),
              looping: true),
              */
          /* ChewieListItem(
              // This URL doesn't exist - will display an error
              videoPlayerController: VideoPlayerController.asset(
                'videos/ironman.mp4',
              ),
              looping: true),
              */
        ],
      ),
    );
  }
}
