import 'package:flutter_clean_architecture/data/sources/remote/model/movie_response_model.dart';

import 'remote/model/video_response.dart';

abstract class MovieRemoteDataSource {
  Future<List<MovieResponseModel>> getMovies();

  Future<MovieResponseModel> getMovieDetails(int movieId);

  Future<VideosResponse> getMovieVideos(int movieId);
}
