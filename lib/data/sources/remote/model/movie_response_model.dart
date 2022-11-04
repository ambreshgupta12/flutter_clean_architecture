
import 'package:json_annotation/json_annotation.dart';

part 'movie_response_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)

class MovieResponseModel {

  int id;
  String title;
  String backdropPath;
  double voteAverage;
  String overview;
  String posterPath;






  MovieResponseModel(
      this.backdropPath,
      this.id,
      this.voteAverage,
      this.overview,
      this.posterPath,
      this.title);
  factory MovieResponseModel.fromJson(Map<String, dynamic> json) => _$MovieResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieResponseModelToJson(this);

}
