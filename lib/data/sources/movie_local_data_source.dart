
import 'local/database/entity/movie_entity.dart';

abstract class MovieLocalDataSource{
  Future<List<MovieEntity>> getMovies();
  Future<MovieEntity?> getMovieDetail(int id);
  Future<void> saveMovies(List<MovieEntity> movies);
}