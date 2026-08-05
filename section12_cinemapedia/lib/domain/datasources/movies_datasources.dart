import 'package:section12_cinemapedia/domain/entities/movide.dart';

abstract class MovieDatasource {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
