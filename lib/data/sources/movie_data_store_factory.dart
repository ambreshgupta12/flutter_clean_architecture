import 'package:flutter_clean_architecture/core/extention/list_extention.dart';
import 'package:flutter_clean_architecture/core/services/connectivity_service.dart';
import 'package:flutter_clean_architecture/data/mapper/movie_domain_mapper.dart';
import 'package:flutter_clean_architecture/data/sources/movie_local_data_source.dart';
import 'package:flutter_clean_architecture/data/sources/movie_remote_data_source.dart';
import 'package:flutter_clean_architecture/domain/entities/video.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/movie.dart';
import '../../domain/entities/movie_details.dart';

@singleton
class MovieDataStoreFactory {
  final MovieLocalDataSource _movieLocalDataSource;
  final MovieRemoteDataSource _movieRemoteDataSource;
  final ConnectivityService _connectivityService;
  final MovieDomainMapper _movieDomainMapper;

  const MovieDataStoreFactory(
      this._movieLocalDataSource,
      this._movieRemoteDataSource,
      this._connectivityService,
      this._movieDomainMapper);

  Future<List<Movie>> getMovies() async {
    /*
    Check if there is no network connection then retrieve the data from the Db
     */
    if (await _connectivityService.checkInternetConnection()) {
      final movies = await _movieRemoteDataSource.getMovies();
      _movieLocalDataSource.saveMovies(movies
          .map((movieResponseModel) =>
              _movieDomainMapper.movieResponseToMovieEntity(movieResponseModel))
          .toList());
      return movies
          .mapToList((e) => _movieDomainMapper.movieResponseToMovie(e));
    } else {
      final cacheMovie = await _movieLocalDataSource.getMovies();
      return cacheMovie.mapToList(
          (movieEntity) => _movieDomainMapper.movieEntityToMovie(movieEntity));
    }
  }

  Future<MovieDetails> getMovieDetails(int id) async {
    /*
    Fetch the movie details from the DB, if not available then get it from API
    */
    final cacheMovie = await _movieLocalDataSource.getMovieDetail(id);
    if (cacheMovie == null) {
      final movieResponseModel =
          await _movieRemoteDataSource.getMovieDetails(id);
      return _movieDomainMapper.movieResponseToMovieDetail(movieResponseModel);
    } else {
      return _movieDomainMapper.movieEntityToMovieDetail(cacheMovie);
    }
  }

  Future<List<Video>> getMovieVideos(int id) async {
    final videos = await _movieRemoteDataSource.getMovieVideos(id);
    return videos.videos
        .mapToList((e) => _movieDomainMapper.videoResponseToVideo(e));
  }
}
