import 'package:flutter_clean_architecture/data/sources/local/database/dao/movie_dao.dart';
import 'package:flutter_clean_architecture/data/sources/local/database/entity/movie_entity.dart';
import 'package:flutter_clean_architecture/data/sources/movie_local_data_source.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MovieLocalDataSource)
class MovieLocalDataSourceImpl extends MovieLocalDataSource {
  final MovieDao _movieDao;
  MovieLocalDataSourceImpl(this._movieDao);

  @override
  Future<MovieEntity?> getMovieDetail(int id) async {
    return _movieDao.findMovieById(id);
  }

  @override
  Future<List<MovieEntity>> getMovies() async {
    return await _movieDao.findAllMovie();
  }

  @override
  Future<void> saveMovies(List<MovieEntity> movies) async {
    return await _movieDao.insertMovies(movies);
  }
}
