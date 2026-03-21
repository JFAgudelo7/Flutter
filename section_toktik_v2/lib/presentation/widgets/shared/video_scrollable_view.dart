import 'package:flutter/material.dart';
import 'package:section_toktik_v2/domain/entities/video_post.dart';
import 'package:section_toktik_v2/presentation/widgets/shared/video_buttons.dart';

class VideoScrollableView extends StatelessWidget{

  final List<VideoPost> videos;

  const VideoScrollableView({
    super.key,
    required this.videos
  });

  @override
  Widget build(BuildContext context){
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index){
        final VideoPost videoPost = videos[index];

        return Stack(
          children:[
            //Video Player + Gradiente

            // Buttons
            Positioned(
              bottom: 120,
              right: 10,
              child: VideoButtons(video: videoPost),
            )
          ],
        );

      }
      
    );
  }
}