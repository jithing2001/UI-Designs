import 'package:flutter/material.dart';

import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YouTubeWidget extends StatefulWidget {
  const YouTubeWidget({super.key});

  @override
  State<YouTubeWidget> createState() => _YouTubeWidgetState();
}

class _YouTubeWidgetState extends State<YouTubeWidget> {
  late YoutubePlayerController _youtubePlayerController;
  final _yourl = 'https://www.youtube.com/watch?v=id1E0lqnUtY';
  @override
  void initState() {
    final yTubId = YoutubePlayer.convertUrlToId(_yourl);
    print(yTubId);
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: yTubId!,
        flags: const YoutubePlayerFlags(loop: true, autoPlay: false));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
      ),
      height: 200,
      width: 350,
      margin: EdgeInsets.only(left: 20),
      child: YoutubePlayer(
        controller: _youtubePlayerController,
        showVideoProgressIndicator: true,
        liveUIColor: Colors.red,
        progressIndicatorColor: Colors.amber,
        progressColors: const ProgressBarColors(
          playedColor: Colors.amber,
          handleColor: Colors.amberAccent,
        ),
      ),
    );
  }
}
