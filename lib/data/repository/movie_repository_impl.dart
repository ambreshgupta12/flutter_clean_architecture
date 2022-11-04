import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:flutter_clean_architecture/domain/entities/movie.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';
import 'package:flutter_clean_architecture/domain/entities/video.dart';
import 'package:flutter_clean_architecture/domain/repository/movie_repository.dart';
import 'package:injectable/injectable.dart';

import '../sources/movie_data_store_factory.dart';
import '../sources/remote/network_error_handler.dart';

@Injectable(as: MovieRepository)
class MovieRepositoryImpl extends MovieRepository {
  final MovieDataStoreFactory _movieDataStoreFactory;
  final NetworkErrorHandler _networkErrorHandler;
  MovieRepositoryImpl(this._movieDataStoreFactory, this._networkErrorHandler);

  @override
  Future<Either<NetworkError, List<Video>>> getMovieVideos(int id) async {
    try {
      final movieVideos = await _movieDataStoreFactory.getMovieVideos(id);
      return Right(movieVideos);
    } catch (e) {
      return Left(_networkErrorHandler.getNetworkError(e));
    }
  }

  @override
  Future<Either<NetworkError, List<Movie>>> getPopularMovies() async {
    try {
      final movies = await _movieDataStoreFactory.getMovies();
      return Right(movies);
    } catch (e) {
      return Left(_networkErrorHandler.getNetworkError(e));
    }
  }

  @override
  Future<Either<NetworkError, MovieDetails>> getMovieDetail(int id) async {
    try {
      final movieDetail = await _movieDataStoreFactory.getMovieDetails(id);
      return Right(movieDetail);
    } catch (e) {
      return Left(_networkErrorHandler.getNetworkError(e));
    }
  }
}
