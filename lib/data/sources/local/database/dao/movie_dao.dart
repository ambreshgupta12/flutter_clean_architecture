import 'package:floor/floor.dart';
import 'package:flutter_clean_architecture/data/sources/local/database/entity/movie_entity.dart';

@dao
abstract class MovieDao {
  @Query('SELECT * FROM MovieEntity')
  Future<List<MovieEntity>> findAllMovie();

  @Query('SELECT * FROM MovieEntity WHERE id=:id')
  Future<MovieEntity?> findMovieById(int id);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertMovie(MovieEntity movieEntity);

  @Insert(onConflict: OnConflictStrategy.replace)
  Future<void> insertMovies(List<MovieEntity> movieEntityList);
}
