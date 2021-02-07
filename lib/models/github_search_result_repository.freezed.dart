// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_search_result_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GitHubSearchResultRepositoryTearOff {
  const _$GitHubSearchResultRepositoryTearOff();

// ignore: unused_element
  Data call(List<GitHubRepository> repository) {
    return Data(
      repository,
    );
  }

// ignore: unused_element
  Error error(GitHubAPIErrorRepository error) {
    return Error(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubSearchResultRepository = _$GitHubSearchResultRepositoryTearOff();

/// @nodoc
mixin _$GitHubSearchResultRepository {
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GitHubRepository> repository), {
    @required TResult error(GitHubAPIErrorRepository error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GitHubRepository> repository), {
    TResult error(GitHubAPIErrorRepository error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GitHubSearchResultRepositoryCopyWith<$Res> {
  factory $GitHubSearchResultRepositoryCopyWith(
          GitHubSearchResultRepository value,
          $Res Function(GitHubSearchResultRepository) then) =
      _$GitHubSearchResultRepositoryCopyWithImpl<$Res>;
}

/// @nodoc
class _$GitHubSearchResultRepositoryCopyWithImpl<$Res>
    implements $GitHubSearchResultRepositoryCopyWith<$Res> {
  _$GitHubSearchResultRepositoryCopyWithImpl(this._value, this._then);

  final GitHubSearchResultRepository _value;
  // ignore: unused_field
  final $Res Function(GitHubSearchResultRepository) _then;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<GitHubRepository> repository});
}

/// @nodoc
class _$DataCopyWithImpl<$Res>
    extends _$GitHubSearchResultRepositoryCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object repository = freezed,
  }) {
    return _then(Data(
      repository == freezed
          ? _value.repository
          : repository as List<GitHubRepository>,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(this.repository) : assert(repository != null);

  @override
  final List<GitHubRepository> repository;

  @override
  String toString() {
    return 'GitHubSearchResultRepository(repository: $repository)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repository);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GitHubRepository> repository), {
    @required TResult error(GitHubAPIErrorRepository error),
  }) {
    assert($default != null);
    assert(error != null);
    return $default(repository);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GitHubRepository> repository), {
    TResult error(GitHubAPIErrorRepository error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(repository);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(error != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements GitHubSearchResultRepository {
  const factory Data(List<GitHubRepository> repository) = _$Data;

  List<GitHubRepository> get repository;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({GitHubAPIErrorRepository error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    extends _$GitHubSearchResultRepositoryCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Error(
      error == freezed ? _value.error : error as GitHubAPIErrorRepository,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.error) : assert(error != null);

  @override
  final GitHubAPIErrorRepository error;

  @override
  String toString() {
    return 'GitHubSearchResultRepository.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<GitHubRepository> repository), {
    @required TResult error(GitHubAPIErrorRepository error),
  }) {
    assert($default != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<GitHubRepository> repository), {
    TResult error(GitHubAPIErrorRepository error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
  }) {
    assert($default != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements GitHubSearchResultRepository {
  const factory Error(GitHubAPIErrorRepository error) = _$Error;

  GitHubAPIErrorRepository get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
