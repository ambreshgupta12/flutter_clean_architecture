import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';
import 'package:flutter_clean_architecture/domain/repository/movie_repository.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_movie_detail_use_cases.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:GetMovieDetailUseCase)
class GetMovieDetailUseCaseImpl extends GetMovieDetailUseCase {
  final MovieRepository _movieRepository;

  GetMovieDetailUseCaseImpl(this._movieRepository);

  @override
  Future<Either<NetworkError, MovieDetails>> execute(int id) {
    return _movieRepository.getMovieDetail(id);
  }
}
