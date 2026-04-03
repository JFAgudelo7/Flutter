

import 'package:section_toktik_v2/domain/entities/video_post.dart';
import 'package:section_toktik_v2/domain/repositories/video_posts_repository.dart';
import 'package:section_toktik_v2/domain/datasources/video_posts_datasource.dart';


class VideoPostsRepositoryImpl implements VideoPostsRepository  {

  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
  });

  @override
  Future<List<VideoPost>> getTrendingVideosByPage( int page){
    return videosDatasource.getTrendingVideosByPage(page);
  }

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser( String userID ){
    throw UnimplementedError();
  }
}