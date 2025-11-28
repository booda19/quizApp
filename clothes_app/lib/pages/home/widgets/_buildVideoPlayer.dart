import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../controller/home/h.dart';

class BuildVideoPlayer extends StatefulWidget {
  const BuildVideoPlayer({super.key,  required this.videoController, required this.toggleplaypause,});

  final VoidCallback toggleplaypause;
  final VideoController videoController;

  @override
  State<BuildVideoPlayer> createState() => BuildVideoPlayerState();
}

class BuildVideoPlayerState extends State<BuildVideoPlayer> {
  late VideoController _videoController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _videoController = VideoController();

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _videoController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    if(!_videoController.isVideoinitilized){
      return const Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      );
    }
    return Stack(
      alignment: Alignment.center,
      children: [
        AspectRatio(
          aspectRatio: _videoController.controller.value.aspectRatio,
          child: VideoPlayer(_videoController.controller),
        ),
        // Play/Pause overlay button
        Positioned.fill(
          child: AnimatedOpacity(
            opacity: _videoController.controller.value.isPlaying ? 0.0 : 1.0,
            duration: const Duration(milliseconds: 300),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Center(
                child: IconButton(
                  icon: Icon(
                    _videoController.controller.value.isPlaying
                        ? Icons.pause
                        : Icons.play_arrow,
                    color: Colors.white,
                    size: 50,
                  ),
                  onPressed: (){

                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );


  }
}

