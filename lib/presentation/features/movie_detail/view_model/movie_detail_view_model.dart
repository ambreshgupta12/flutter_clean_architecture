import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_movie_detail_use_cases.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_movie_video_use_case.dart';
import 'package:flutter_clean_architecture/presentation/features/movie_detail/state/movie_detail_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MovieDetailViewModel extends Cubit<MovieDetailState> {
  MovieDetailViewModel(this._movieDetailUseCase, this._movieVideoUseCase)
      : super(const MovieDetailState());

  final GetMovieDetailUseCase _movieDetailUseCase;
  final GetMovieVideoUseCase _movieVideoUseCase;

  void getVideos(int id) async {
    final result = await _movieVideoUseCase.execute(id);
    result.forEach((videos) {
      emit(
        state.copyWith(
          videos: videos
              .where(
                  (video) => video.site == "YouTube" && video.type == "Trailer")
              .toList(),
        ),
      );
    });
  }

  void getMovieDetails(int id) async {
    final result = await _movieDetailUseCase.execute(id);
    result.fold(
        (l) => emit(state.copyWith(
            movieDetailResultState: MovieDetailResultState.error(l))),
        (r) => emit(state.copyWith(
            title: r.title,
            movieDetailResultState: MovieDetailResultState.result(r))));
  }


  void initialize(int id) {
    getMovieDetails(id);
    getVideos(id);
  }
}
