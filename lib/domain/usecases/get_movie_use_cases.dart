import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:flutter_clean_architecture/domain/entities/movie.dart';

abstract class GetMovieUseCase{
  Future<Either<NetworkError,List<Movie>>> execute();
}