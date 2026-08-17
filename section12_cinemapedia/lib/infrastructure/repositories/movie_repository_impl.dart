
import 'package:section12_cinemapedia/domain/datasources/movies_datasources.dart';
import 'package:section12_cinemapedia/domain/entities/movie.dart';
import 'package:section12_cinemapedia/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MovieRepository{

  final MoviesDatasource datasource;
  MovieRepositoryImpl(this.datasource);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}){
    return datasource.getNowPlaying( page: page);
  }
}