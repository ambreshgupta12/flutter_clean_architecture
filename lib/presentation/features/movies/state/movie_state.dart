import 'package:flutter_clean_architecture/core/network_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/movie.dart';

part 'movie_state.freezed.dart';

@freezed
class MoviesState with _$MoviesState {
  const factory MoviesState({
    @Default(MoviesResultState.loading()) MoviesResultState moviesResultState,
  }) = _MoviesState;
}

@freezed
class MoviesResultState with _$MoviesResultState {
  const factory MoviesResultState.loading() = MoviesLoading;

  const factory MoviesResultState.result(List<Movie> movies) = MoviesResult;

  const factory MoviesResultState.error(NetworkError error) = MoviesError;
}
