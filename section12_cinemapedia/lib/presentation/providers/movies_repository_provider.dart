
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:section12_cinemapedia/infrastructure/datasources/moviedb_datasource.dart';
import 'package:section12_cinemapedia/infrastructure/repositories/movie_repository_impl.dart';

final movieRepositoryProvider = Provider((ref){

  return MovieRepositoryImpl( MoviedbDatasource());
  
});