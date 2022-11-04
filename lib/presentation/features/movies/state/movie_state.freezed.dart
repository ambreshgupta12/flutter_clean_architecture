// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MoviesState {
  MoviesResultState get moviesResultState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MoviesStateCopyWith<MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesStateCopyWith<$Res> {
  factory $MoviesStateCopyWith(
          MoviesState value, $Res Function(MoviesState) then) =
      _$MoviesStateCopyWithImpl<$Res, MoviesState>;
  @useResult
  $Res call({MoviesResultState moviesResultState});

  $MoviesResultStateCopyWith<$Res> get moviesResultState;
}

/// @nodoc
class _$MoviesStateCopyWithImpl<$Res, $Val extends MoviesState>
    implements $MoviesStateCopyWith<$Res> {
  _$MoviesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesResultState = null,
  }) {
    return _then(_value.copyWith(
      moviesResultState: null == moviesResultState
          ? _value.moviesResultState
          : moviesResultState // ignore: cast_nullable_to_non_nullable
              as MoviesResultState,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MoviesResultStateCopyWith<$Res> get moviesResultState {
    return $MoviesResultStateCopyWith<$Res>(_value.moviesResultState, (value) {
      return _then(_value.copyWith(moviesResultState: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MoviesStateCopyWith<$Res>
    implements $MoviesStateCopyWith<$Res> {
  factory _$$_MoviesStateCopyWith(
          _$_MoviesState value, $Res Function(_$_MoviesState) then) =
      __$$_MoviesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MoviesResultState moviesResultState});

  @override
  $MoviesResultStateCopyWith<$Res> get moviesResultState;
}

/// @nodoc
class __$$_MoviesStateCopyWithImpl<$Res>
    extends _$MoviesStateCopyWithImpl<$Res, _$_MoviesState>
    implements _$$_MoviesStateCopyWith<$Res> {
  __$$_MoviesStateCopyWithImpl(
      _$_MoviesState _value, $Res Function(_$_MoviesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? moviesResultState = null,
  }) {
    return _then(_$_MoviesState(
      moviesResultState: null == moviesResultState
          ? _value.moviesResultState
          : moviesResultState // ignore: cast_nullable_to_non_nullable
              as MoviesResultState,
    ));
  }
}

/// @nodoc

class _$_MoviesState implements _MoviesState {
  const _$_MoviesState(
      {this.moviesResultState = const MoviesResultState.loading()});

  @override
  @JsonKey()
  final MoviesResultState moviesResultState;

  @override
  String toString() {
    return 'MoviesState(moviesResultState: $moviesResultState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesState &&
            (identical(other.moviesResultState, moviesResultState) ||
                other.moviesResultState == moviesResultState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, moviesResultState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesStateCopyWith<_$_MoviesState> get copyWith =>
      __$$_MoviesStateCopyWithImpl<_$_MoviesState>(this, _$identity);
}

abstract class _MoviesState implements MoviesState {
  const factory _MoviesState({final MoviesResultState moviesResultState}) =
      _$_MoviesState;

  @override
  MoviesResultState get moviesResultState;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesStateCopyWith<_$_MoviesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MoviesResultState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? result,
    TResult? Function(NetworkError error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesResult value)? result,
    TResult? Function(MoviesError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesResultStateCopyWith<$Res> {
  factory $MoviesResultStateCopyWith(
          MoviesResultState value, $Res Function(MoviesResultState) then) =
      _$MoviesResultStateCopyWithImpl<$Res, MoviesResultState>;
}

/// @nodoc
class _$MoviesResultStateCopyWithImpl<$Res, $Val extends MoviesResultState>
    implements $MoviesResultStateCopyWith<$Res> {
  _$MoviesResultStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MoviesLoadingCopyWith<$Res> {
  factory _$$MoviesLoadingCopyWith(
          _$MoviesLoading value, $Res Function(_$MoviesLoading) then) =
      __$$MoviesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MoviesLoadingCopyWithImpl<$Res>
    extends _$MoviesResultStateCopyWithImpl<$Res, _$MoviesLoading>
    implements _$$MoviesLoadingCopyWith<$Res> {
  __$$MoviesLoadingCopyWithImpl(
      _$MoviesLoading _value, $Res Function(_$MoviesLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MoviesLoading implements MoviesLoading {
  const _$MoviesLoading();

  @override
  String toString() {
    return 'MoviesResultState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MoviesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? result,
    TResult? Function(NetworkError error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesResult value)? result,
    TResult? Function(MoviesError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MoviesLoading implements MoviesResultState {
  const factory MoviesLoading() = _$MoviesLoading;
}

/// @nodoc
abstract class _$$MoviesResultCopyWith<$Res> {
  factory _$$MoviesResultCopyWith(
          _$MoviesResult value, $Res Function(_$MoviesResult) then) =
      __$$MoviesResultCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Movie> movies});
}

/// @nodoc
class __$$MoviesResultCopyWithImpl<$Res>
    extends _$MoviesResultStateCopyWithImpl<$Res, _$MoviesResult>
    implements _$$MoviesResultCopyWith<$Res> {
  __$$MoviesResultCopyWithImpl(
      _$MoviesResult _value, $Res Function(_$MoviesResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? movies = null,
  }) {
    return _then(_$MoviesResult(
      null == movies
          ? _value._movies
          : movies // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
    ));
  }
}

/// @nodoc

class _$MoviesResult implements MoviesResult {
  const _$MoviesResult(final List<Movie> movies) : _movies = movies;

  final List<Movie> _movies;
  @override
  List<Movie> get movies {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_movies);
  }

  @override
  String toString() {
    return 'MoviesResultState.result(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesResult &&
            const DeepCollectionEquality().equals(other._movies, _movies));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_movies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesResultCopyWith<_$MoviesResult> get copyWith =>
      __$$MoviesResultCopyWithImpl<_$MoviesResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) {
    return result(movies);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? result,
    TResult? Function(NetworkError error)? error,
  }) {
    return result?.call(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
    TResult Function(NetworkError error)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    return result(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesResult value)? result,
    TResult? Function(MoviesError value)? error,
  }) {
    return result?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    if (result != null) {
      return result(this);
    }
    return orElse();
  }
}

abstract class MoviesResult implements MoviesResultState {
  const factory MoviesResult(final List<Movie> movies) = _$MoviesResult;

  List<Movie> get movies;
  @JsonKey(ignore: true)
  _$$MoviesResultCopyWith<_$MoviesResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MoviesErrorCopyWith<$Res> {
  factory _$$MoviesErrorCopyWith(
          _$MoviesError value, $Res Function(_$MoviesError) then) =
      __$$MoviesErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({NetworkError error});
}

/// @nodoc
class __$$MoviesErrorCopyWithImpl<$Res>
    extends _$MoviesResultStateCopyWithImpl<$Res, _$MoviesError>
    implements _$$MoviesErrorCopyWith<$Res> {
  __$$MoviesErrorCopyWithImpl(
      _$MoviesError _value, $Res Function(_$MoviesError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$MoviesError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as NetworkError,
    ));
  }
}

/// @nodoc

class _$MoviesError implements MoviesError {
  const _$MoviesError(this.error);

  @override
  final NetworkError error;

  @override
  String toString() {
    return 'MoviesResultState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoviesError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoviesErrorCopyWith<_$MoviesError> get copyWith =>
      __$$MoviesErrorCopyWithImpl<_$MoviesError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Movie> movies) result,
    required TResult Function(NetworkError error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<Movie> movies)? result,
    TResult? Function(NetworkError error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Movie> movies)? result,
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
    required TResult Function(MoviesLoading value) loading,
    required TResult Function(MoviesResult value) result,
    required TResult Function(MoviesError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoviesLoading value)? loading,
    TResult? Function(MoviesResult value)? result,
    TResult? Function(MoviesError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoading value)? loading,
    TResult Function(MoviesResult value)? result,
    TResult Function(MoviesError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MoviesError implements MoviesResultState {
  const factory MoviesError(final NetworkError error) = _$MoviesError;

  NetworkError get error;
  @JsonKey(ignore: true)
  _$$MoviesErrorCopyWith<_$MoviesError> get copyWith =>
      throw _privateConstructorUsedError;
}
