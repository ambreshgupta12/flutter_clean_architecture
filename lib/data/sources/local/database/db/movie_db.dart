import 'package:floor/floor.dart';
import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'package:flutter_clean_architecture/data/sources/local/database/dao/movie_dao.dart';
import 'package:flutter_clean_architecture/data/sources/local/database/entity/movie_entity.dart';
part 'movie_db.g.dart';
@Database(version: 1, entities: [MovieEntity])
abstract class MovieDb extends FloorDatabase{
  MovieDao get movieDao;
}