// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MovieDetailState {
  String get title => throw _privateConstructorUsedError;
  List<Video> get videos => throw _privateConstructorUsedError;
  MovieDetailResultState get movieDetailResultState =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailStateCopyWith<MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailStateCopyWith<$Res> {
  factory $MovieDetailStateCopyWith(
          MovieDetailState value, $Res Function(MovieDetailState) then) =
      _$MovieDetailStateCopyWithImpl<$Res, MovieDetailState>;
  @useResult
  $Res call(
      {String title,
      List<Video> videos,
      MovieDetailResultState movieDetailResultState});

  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState;
}

/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res, $Val extends MovieDetailState>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? videos = null,
    Object? movieDetailResultState = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      movieDetailResultState: null == movieDetailResultState
          ? _value.movieDetailResultState
          : movieDetailResultState // ignore: cast_nullable_to_non_nullable
              as MovieDetailResultState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState {
    return $MovieDetailResultStateCopyWith<$Res>(_value.movieDetailResultState,
        (value) {
      return _then(_value.copyWith(movieDetailResultState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieDetailStateCopyWith<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  factory _$$_MovieDetailStateCopyWith(
          _$_MovieDetailState value, $Res Function(_$_MovieDetailState) then) =
      __$$_MovieDetailStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      List<Video> videos,
      MovieDetailResultState movieDetailResultState});

  @override
  $MovieDetailResultStateCopyWith<$Res> get movieDetailResultState;
}

/// @nodoc
class __$$_MovieDetailStateCopyWithImpl<$Res>
    extends _$MovieDetailStateCopyWithImpl<$Res, _$_MovieDetailState>
    implements _$$_MovieDetailStateCopyWith<$Res> {
  __$$_MovieDetailStateCopyWithImpl(
      _$_MovieDetailState _value, $Res Function(_$_MovieDetailState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? videos = null,
    Object? movieDetailResultState = null,
  }) {
    return _then(_$_MovieDetailState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      videos: null == videos
          ? _value._videos
          : videos // ignore: cast_nullable_to_non_nullable
              as List<Video>,
      movieDetailResultState: null == movieDetailResultState
          ? _value.movieDetailResultState
          : movieDetailResultState // ignore: cast_nullable_to_non_nullable
              as MovieDetailResultState,
    ));
  }
}

/// @nodoc

class _$_MovieDetailState implements _MovieDetailState {
  const _$_MovieDetailState(
      {this.title = "",
      final List<Video> videos = const [],
      this.movieDetailResultState = const MovieDetailResultState.loading()})
      : _videos = videos;

  @override
  @JsonKey()
  final String title;
  final List<Video> _videos;
  @override
  @JsonKey()
  List<Video> get videos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_videos);
  }

  @override
  @JsonKey()
  final MovieDetailResultState movieDetailResultState;

  @override
  String toString() {
    return 'MovieDetailState(title: $title, videos: $videos, movieDetailResultState: $movieDetailResultState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieDetailState &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._videos, _videos) &&
            (identical(other.movieDetailResultState, movieDetailResultState) ||
                other.movieDetailResultState == movieDetailResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title,
      const DeepCollectionEquality().hash(_videos), movieDetailResultState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieDetailStateCopyWith<_$_MovieDetailState> get copyWith =>
      __$$_MovieDetailStateCopyWithImpl<_$_MovieDetailState>(this, _$identity);
}

abstract class _MovieDetailState implements MovieDetailState {
  const factory _MovieDetailState(
          {final String title,
          final List<Video> videos,
          final MovieDetailResultState movieDetailResultState}) =
      _$_MovieDetailState;

  @override
  String get title;
  @override
  List<Video> get videos;
  @override
  MovieDetailResultState get movieDetailResultState;
  @override
  @JsonKey(ignore: true)
  _$$_MovieDetailStateCopyWith<_$_MovieDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieDetailResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) result,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails)? result,
    TResult? Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailResult value)? result,
    TResult? Function(MovieDetailError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailResultStateCopyWith<$Res> {
  factory $MovieDetailResultStateCopyWith(MovieDetailResultState value,
          $Res Function(MovieDetailResultState) then) =
      _$MovieDetailResultStateCopyWithImpl<$Res, MovieDetailResultState>;
}

/// @nodoc
class _$MovieDetailResultStateCopyWithImpl<$Res,
        $Val extends MovieDetailResultState>
    implements $MovieDetailResultStateCopyWith<$Res> {
  _$MovieDetailResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MovieDetailLoadingCopyWith<$Res> {
  factory _$$MovieDetailLoadingCopyWith(_$MovieDetailLoading value,
          $Res Function(_$MovieDetailLoading) then) =
      __$$MovieDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MovieDetailLoadingCopyWithImpl<$Res>
    extends _$MovieDetailResultStateCopyWithImpl<$Res, _$MovieDetailLoading>
    implements _$$MovieDetailLoadingCopyWith<$Res> {
  __$$MovieDetailLoadingCopyWithImpl(
      _$MovieDetailLoading _value, $Res Function(_$MovieDetailLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MovieDetailLoading implements MovieDetailLoading {
  const _$MovieDetailLoading();

  @override
  String toString() {
    return 'MovieDetailResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MovieDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) result,
    required TResult Function(NetworkError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails)? result,
    TResult? Function(NetworkError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailResult value)? result,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieDetailLoading implements MovieDetailResultState {
  const factory MovieDetailLoading() = _$MovieDetailLoading;
}

/// @nodoc
abstract class _$$MovieDetailResultCopyWith<$Res> {
  factory _$$MovieDetailResultCopyWith(
          _$MovieDetailResult value, $Res Function(_$MovieDetailResult) then) =
      __$$MovieDetailResultCopyWithImpl<$Res>;
  @useResult
  $Res call({MovieDetails movieDetails});
}

/// @nodoc
class __$$MovieDetailResultCopyWithImpl<$Res>
    extends _$MovieDetailResultStateCopyWithImpl<$Res, _$MovieDetailResult>
    implements _$$MovieDetailResultCopyWith<$Res> {
  __$$MovieDetailResultCopyWithImpl(
      _$MovieDetailResult _value, $Res Function(_$MovieDetailResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movieDetails = null,
  }) {
    return _then(_$MovieDetailResult(
      null == movieDetails
          ? _value.movieDetails
          : movieDetails // ignore: cast_nullable_to_non_nullable
              as MovieDetails,
    ));
  }
}

/// @nodoc

class _$MovieDetailResult implements MovieDetailResult {
  const _$MovieDetailResult(this.movieDetails);

  @override
  final MovieDetails movieDetails;

  @override
  String toString() {
    return 'MovieDetailResultState.result(movieDetails: $movieDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailResult &&
            (identical(other.movieDetails, movieDetails) ||
                other.movieDetails == movieDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, movieDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailResultCopyWith<_$MovieDetailResult> get copyWith =>
      __$$MovieDetailResultCopyWithImpl<_$MovieDetailResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) result,
    required TResult Function(NetworkError error) error,
  }) {
    return result(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails)? result,
    TResult? Function(NetworkError error)? error,
  }) {
    return result?.call(movieDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(movieDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailResult value)? result,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class MovieDetailResult implements MovieDetailResultState {
  const factory MovieDetailResult(final MovieDetails movieDetails) =
      _$MovieDetailResult;

  MovieDetails get movieDetails;
  @JsonKey(ignore: true)
  _$$MovieDetailResultCopyWith<_$MovieDetailResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MovieDetailErrorCopyWith<$Res> {
  factory _$$MovieDetailErrorCopyWith(
          _$MovieDetailError value, $Res Function(_$MovieDetailError) then) =
      __$$MovieDetailErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkError error});
}

/// @nodoc
class __$$MovieDetailErrorCopyWithImpl<$Res>
    extends _$MovieDetailResultStateCopyWithImpl<$Res, _$MovieDetailError>
    implements _$$MovieDetailErrorCopyWith<$Res> {
  __$$MovieDetailErrorCopyWithImpl(
      _$MovieDetailError _value, $Res Function(_$MovieDetailError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MovieDetailError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$MovieDetailError implements MovieDetailError {
  const _$MovieDetailError(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'MovieDetailResultState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieDetailError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieDetailErrorCopyWith<_$MovieDetailError> get copyWith =>
      __$$MovieDetailErrorCopyWithImpl<_$MovieDetailError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetails movieDetails) result,
    required TResult Function(NetworkError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(MovieDetails movieDetails)? result,
    TResult? Function(NetworkError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetails movieDetails)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailLoading value) loading,
    required TResult Function(MovieDetailResult value) result,
    required TResult Function(MovieDetailError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MovieDetailLoading value)? loading,
    TResult? Function(MovieDetailResult value)? result,
    TResult? Function(MovieDetailError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailLoading value)? loading,
    TResult Function(MovieDetailResult value)? result,
    TResult Function(MovieDetailError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieDetailError implements MovieDetailResultState {
  const factory MovieDetailError(final NetworkError error) = _$MovieDetailError;

  NetworkError get error;
  @JsonKey(ignore: true)
  _$$MovieDetailErrorCopyWith<_$MovieDetailError> get copyWith =>
      throw _privateConstructorUsedError;
}
