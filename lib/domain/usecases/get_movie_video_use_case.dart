import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/network_error.dart';

import '../entities/video.dart';

abstract class GetMovieVideoUseCase {
  Future<Either<NetworkError, List<Video>>> execute(int id);
}
