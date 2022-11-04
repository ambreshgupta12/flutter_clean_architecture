import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/domain/usecases/get_movie_use_cases.dart';
import 'package:flutter_clean_architecture/presentation/features/movies/state/movie_state.dart';
import 'package:injectable/injectable.dart';

@injectable
class MoviesViewModel extends Cubit<MoviesState> {
  MoviesViewModel(this._getMovieUseCase) : super(const MoviesState());
  final GetMovieUseCase _getMovieUseCase;

  void getMovie() async {
    final result = await _getMovieUseCase.execute();
    result.fold(
        (l) =>
            emit(state.copyWith(moviesResultState: MoviesResultState.error(l))),
        (r) => emit(
            state.copyWith(moviesResultState: MoviesResultState.result(r))));
  }
}
