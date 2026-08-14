import 'package:dio/dio.dart';
import 'package:section12_cinemapedia/config/constants/environment.dart';
import 'package:section12_cinemapedia/domain/datasources/movies_datasources.dart';
import 'package:section12_cinemapedia/domain/entities/movide.dart';
import 'package:section12_cinemapedia/infrastructure/mappers/movie_mapper.dart';

class MovidedbDatasource extends MovieDatasource{

  final dio = Dio(BaseOptions(
    baseUrl: "https://api.themoviedb.org/3",
    queryParameters: {
      'api_key': Environment.theMovieDBKey,
      'language': 'es-MX'
    }
  ));


  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {

    final response = await dio.get("/movie/now_playing");
  
    final movieDBResponse = MovieDbResponse.fromJson(response.data);

    final List<Movie> movies = movieDBResponse.results.map(
      (moviedb) => MovieMapper().movieDBToEntity(moviedb);
    );

    return [];
  }


}