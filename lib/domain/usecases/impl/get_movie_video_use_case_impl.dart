import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:flutter_clean_architecture/domain/entities/video.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_movie_video_use_case.dart';

import '../../repository/movie_repository.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:GetMovieVideoUseCase)
class GetMovieVideoUseCaseImpl extends GetMovieVideoUseCase {
  final MovieRepository _movieRepository;

  GetMovieVideoUseCaseImpl(this._movieRepository);

  @override
  Future<Either<NetworkError, List<Video>>> execute(int id) {
    return _movieRepository.getMovieVideos(id);
  }
}
