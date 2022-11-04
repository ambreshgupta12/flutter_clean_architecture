

import 'package:flutter_clean_architecture/data/sources/local/database/entity/movie_entity.dart';
import 'package:flutter_clean_architecture/data/sources/remote/model/movie_response_model.dart';
import 'package:flutter_clean_architecture/data/sources/remote/model/video_response.dart';
import 'package:flutter_clean_architecture/domain/entities/movie_details.dart';
import 'package:flutter_clean_architecture/domain/entities/video.dart';
import 'package:smartstruct/smartstruct.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/movie.dart';

part 'movie_domain_mapper.mapper.g.dart';


@Mapper(useInjection : true)
abstract class MovieDomainMapper{
  MovieEntity movieResponseToMovieEntity(MovieResponseModel movieResponseModel);
  Movie movieResponseToMovie(MovieResponseModel movieResponseModel);
  Movie movieEntityToMovie(MovieEntity entity);
  MovieDetails movieResponseToMovieDetail(MovieResponseModel movieResponseModel);
  MovieDetails movieEntityToMovieDetail(MovieEntity entity);
  Video videoResponseToVideo(VideoResponse videoResponse);

}