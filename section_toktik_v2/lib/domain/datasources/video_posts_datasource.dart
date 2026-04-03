

import 'package:section_toktik_v2/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {

  Future<List<VideoPost>> getTrendingVideosByPage( int page);
  Future<List<VideoPost>> getFavoriteVideosByUser( String userID );
}

