// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_domain_mapper.dart';

// **************************************************************************
// MapperGenerator
// **************************************************************************

@LazySingleton(as: MovieDomainMapper)
class MovieDomainMapperImpl extends MovieDomainMapper {
  MovieDomainMapperImpl() : super();

  @override
  MovieEntity movieResponseToMovieEntity(
      MovieResponseModel movieResponseModel) {
    final movieentity = MovieEntity(
      movieResponseModel.id,
      movieResponseModel.posterPath,
      movieResponseModel.backdropPath,
      movieResponseModel.title,
      movieResponseModel.voteAverage,
      movieResponseModel.overview,
    );
    return movieentity;
  }

  @override
  Movie movieResponseToMovie(MovieResponseModel movieResponseModel) {
    final movie = Movie(
      movieResponseModel.id,
      movieResponseModel.posterPath,
      movieResponseModel.backdropPath,
      movieResponseModel.title,
      movieResponseModel.voteAverage,
      movieResponseModel.overview,
    );
    return movie;
  }

  @override
  Movie movieEntityToMovie(MovieEntity entity) {
    final movie = Movie(
      entity.id,
      entity.posterPath,
      entity.backdropPath,
      entity.title,
      entity.voteAverage,
      entity.overview,
    );
    return movie;
  }

  @override
  MovieDetails movieResponseToMovieDetail(
      MovieResponseModel movieResponseModel) {
    final moviedetails = MovieDetails(
      movieResponseModel.backdropPath,
      movieResponseModel.title,
      movieResponseModel.voteAverage,
      movieResponseModel.overview,
    );
    return moviedetails;
  }

  @override
  MovieDetails movieEntityToMovieDetail(MovieEntity entity) {
    final moviedetails = MovieDetails(
      entity.backdropPath,
      entity.title,
      entity.voteAverage,
      entity.overview,
    );
    return moviedetails;
  }

  @override
  Video videoResponseToVideo(VideoResponse videoResponse) {
    final video = Video(
      videoResponse.id,
      videoResponse.key,
      videoResponse.name,
      videoResponse.site,
      videoResponse.size,
      videoResponse.type,
    );
    return video;
  }
}
