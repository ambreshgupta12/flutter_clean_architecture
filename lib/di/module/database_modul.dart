import 'package:flutter_clean_architecture/data/sources/local/database/dao/movie_dao.dart';
import 'package:flutter_clean_architecture/data/sources/local/database/db/movie_db.dart';
import 'package:flutter_clean_architecture/res/constants.dart';
import 'package:injectable/injectable.dart';

@module
abstract class DatabaseModule {
  @singleton
  @preResolve
  Future<MovieDb> get movieDatabase async {
    final database =
        await $FloorMovieDb.databaseBuilder(Constants.dbName).build();
    return database;
  }

  @lazySingleton
  MovieDao movieDao(MovieDb movieDb)=>movieDb.movieDao;

}
