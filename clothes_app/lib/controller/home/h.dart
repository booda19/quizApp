import 'package:video_player/video_player.dart';

class VideoController {
  late VideoPlayerController _controller;
  bool isVideoinitilized = false;

  VideoPlayerController get controller => _controller;

  Future<void> intilizedVideo() async {
    _controller = VideoPlayerController.asset('assets/video/model_girl.mp4')
      ..setLooping(true);
    await _controller.initialize();
    isVideoinitilized = true;
    _controller.play();
    // setState(() {
    //   isVideoinitilized = true;
    // });

  }
  void toggleplaypause(){
    if(_controller.value.isPlaying) {
      _controller.pause();
    }
    else{
      _controller.play();
    }
  }
void dispose(){
    _controller.dispose();
}

}
