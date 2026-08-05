import 'package:section12_cinemapedia/domain/entities/movide.dart';

abstract class MovieRepository {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
