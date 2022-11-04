import 'package:flutter_clean_architecture/data/sources/movie_remote_data_source.dart';
import 'package:flutter_clean_architecture/data/sources/remote/model/movie_response_model.dart';
import 'package:flutter_clean_architecture/data/sources/remote/model/video_response.dart';
import 'package:flutter_clean_architecture/data/sources/remote/service/movie_api_service.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: MovieRemoteDataSource)
class MovieRemoteDataSourceImpl extends MovieRemoteDataSource {
  final MovieApiService _movieApiService;

  MovieRemoteDataSourceImpl(this._movieApiService);

  @override
  Future<MovieResponseModel> getMovieDetails(int movieId) async {
    return await _movieApiService.getMovieDetails(movieId);
  }

  @override
  Future<VideosResponse> getMovieVideos(int movieId) async {
    return await _movieApiService.getMovieVideos(movieId);
  }

  @override
  Future<List<MovieResponseModel>> getMovies() async {
    final movies = await _movieApiService.getMovies();
    return movies.results;
  }
}
