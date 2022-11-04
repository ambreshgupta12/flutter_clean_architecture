import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:flutter_clean_architecture/domain/entities/movie.dart';
import 'package:flutter_clean_architecture/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_movie_use_cases.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:GetMovieUseCase)
class GetMovieUseCaseImpl extends GetMovieUseCase {

  final MovieRepository _movieRepository;

  GetMovieUseCaseImpl(this._movieRepository);

  @override
  Future<Either<NetworkError, List<Movie>>> execute() {
    return _movieRepository.getPopularMovies();
  }

}