import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';

abstract class GetMovieDetailUseCase{
  Future<Either<NetworkError,MovieDetails>> execute(int id);
}