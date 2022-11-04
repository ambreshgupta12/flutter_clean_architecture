// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_db.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

// ignore: avoid_classes_with_only_static_members
class $FloorMovieDb {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MovieDbBuilder databaseBuilder(String name) =>
      _$MovieDbBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static _$MovieDbBuilder inMemoryDatabaseBuilder() => _$MovieDbBuilder(null);
}

class _$MovieDbBuilder {
  _$MovieDbBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  /// Adds migrations to the builder.
  _$MovieDbBuilder addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  /// Adds a database [Callback] to the builder.
  _$MovieDbBuilder addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  /// Creates the database and initializes it.
  Future<MovieDb> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$MovieDb();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$MovieDb extends MovieDb {
  _$MovieDb([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  MovieDao? _movieDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `MovieEntity` (`id` INTEGER NOT NULL, `posterPath` TEXT NOT NULL, `backdropPath` TEXT NOT NULL, `title` TEXT NOT NULL, `voteAverage` REAL NOT NULL, `overview` TEXT NOT NULL, PRIMARY KEY (`id`))');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  MovieDao get movieDao {
    return _movieDaoInstance ??= _$MovieDao(database, changeListener);
  }
}

class _$MovieDao extends MovieDao {
  _$MovieDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _movieEntityInsertionAdapter = InsertionAdapter(
            database,
            'MovieEntity',
            (MovieEntity item) => <String, Object?>{
                  'id': item.id,
                  'posterPath': item.posterPath,
                  'backdropPath': item.backdropPath,
                  'title': item.title,
                  'voteAverage': item.voteAverage,
                  'overview': item.overview
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<MovieEntity> _movieEntityInsertionAdapter;

  @override
  Future<List<MovieEntity>> findAllMovie() async {
    return _queryAdapter.queryList('SELECT * FROM MovieEntity',
        mapper: (Map<String, Object?> row) => MovieEntity(
            row['id'] as int,
            row['posterPath'] as String,
            row['backdropPath'] as String,
            row['title'] as String,
            row['voteAverage'] as double,
            row['overview'] as String));
  }

  @override
  Future<MovieEntity?> findMovieById(int id) async {
    return _queryAdapter.query('SELECT * FROM MovieEntity WHERE id=?1',
        mapper: (Map<String, Object?> row) => MovieEntity(
            row['id'] as int,
            row['posterPath'] as String,
            row['backdropPath'] as String,
            row['title'] as String,
            row['voteAverage'] as double,
            row['overview'] as String),
        arguments: [id]);
  }

  @override
  Future<void> insertMovie(MovieEntity movieEntity) async {
    await _movieEntityInsertionAdapter.insert(
        movieEntity, OnConflictStrategy.replace);
  }

  @override
  Future<void> insertMovies(List<MovieEntity> movieEntityList) async {
    await _movieEntityInsertionAdapter.insertList(
        movieEntityList, OnConflictStrategy.replace);
  }
}
