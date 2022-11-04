import 'package:flutter_clean_architecture/domain/entities/movie.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';
import 'package:flutter_clean_architecture/domain/entities/video.dart';
import '../../core/network_error.dart';

abstract class MovieRepository{
  Future<Either<NetworkError,List<Movie>>> getPopularMovies();
  Future<Either<NetworkError,MovieDetails>> getMovieDetail(int id);
  Future<Either<NetworkError,List<Video>>> getMovieVideos(int id);
}