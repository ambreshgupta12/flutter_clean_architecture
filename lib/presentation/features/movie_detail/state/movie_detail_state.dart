import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/network_error.dart';
import '../../../../domain/entities/video.dart';

part 'movie_detail_state.freezed.dart';

@freezed
class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState(
      {@Default("")
          String title,
      @Default([])
          List<Video> videos,
      @Default(MovieDetailResultState.loading())
          MovieDetailResultState movieDetailResultState}) = _MovieDetailState;
}

@freezed
class MovieDetailResultState with _$MovieDetailResultState {
  const factory MovieDetailResultState.loading() = MovieDetailLoading;

  const factory MovieDetailResultState.result(MovieDetails movieDetails) =
      MovieDetailResult;

  const factory MovieDetailResultState.error(NetworkError error) =
      MovieDetailError;
}
