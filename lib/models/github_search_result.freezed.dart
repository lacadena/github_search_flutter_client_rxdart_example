// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GitHubSearchResultTearOff {
  const _$GitHubSearchResultTearOff();

// ignore: unused_element
  LoadedUsers loadedUsers(List<GitHubUser> user) {
    return LoadedUsers(
      user,
    );
  }

// ignore: unused_element
  LoadedRepositories loadedRepositories(List<GitHubRepository> repositories) {
    return LoadedRepositories(
      repositories,
    );
  }

// ignore: unused_element
  Error error(GitHubAPIError error) {
    return Error(
      error,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubSearchResult = _$GitHubSearchResultTearOff();

/// @nodoc
mixin _$GitHubSearchResult {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadedUsers(List<GitHubUser> user),
    @required TResult loadedRepositories(List<GitHubRepository> repositories),
    @required TResult error(GitHubAPIError error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadedUsers(List<GitHubUser> user),
    TResult loadedRepositories(List<GitHubRepository> repositories),
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadedUsers(LoadedUsers value),
    @required TResult loadedRepositories(LoadedRepositories value),
    @required TResult error(Error value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadedUsers(LoadedUsers value),
    TResult loadedRepositories(LoadedRepositories value),
    TResult error(Error value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $GitHubSearchResultCopyWith<$Res> {
  factory $GitHubSearchResultCopyWith(
          GitHubSearchResult value, $Res Function(GitHubSearchResult) then) =
      _$GitHubSearchResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$GitHubSearchResultCopyWithImpl<$Res>
    implements $GitHubSearchResultCopyWith<$Res> {
  _$GitHubSearchResultCopyWithImpl(this._value, this._then);

  final GitHubSearchResult _value;
  // ignore: unused_field
  final $Res Function(GitHubSearchResult) _then;
}

/// @nodoc
abstract class $LoadedUsersCopyWith<$Res> {
  factory $LoadedUsersCopyWith(
          LoadedUsers value, $Res Function(LoadedUsers) then) =
      _$LoadedUsersCopyWithImpl<$Res>;
  $Res call({List<GitHubUser> user});
}

/// @nodoc
class _$LoadedUsersCopyWithImpl<$Res>
    extends _$GitHubSearchResultCopyWithImpl<$Res>
    implements $LoadedUsersCopyWith<$Res> {
  _$LoadedUsersCopyWithImpl(
      LoadedUsers _value, $Res Function(LoadedUsers) _then)
      : super(_value, (v) => _then(v as LoadedUsers));

  @override
  LoadedUsers get _value => super._value as LoadedUsers;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(LoadedUsers(
      user == freezed ? _value.user : user as List<GitHubUser>,
    ));
  }
}

/// @nodoc
class _$LoadedUsers implements LoadedUsers {
  const _$LoadedUsers(this.user) : assert(user != null);

  @override
  final List<GitHubUser> user;

  @override
  String toString() {
    return 'GitHubSearchResult.loadedUsers(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedUsers &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @JsonKey(ignore: true)
  @override
  $LoadedUsersCopyWith<LoadedUsers> get copyWith =>
      _$LoadedUsersCopyWithImpl<LoadedUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadedUsers(List<GitHubUser> user),
    @required TResult loadedRepositories(List<GitHubRepository> repositories),
    @required TResult error(GitHubAPIError error),
  }) {
    assert(loadedUsers != null);
    assert(loadedRepositories != null);
    assert(error != null);
    return loadedUsers(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadedUsers(List<GitHubUser> user),
    TResult loadedRepositories(List<GitHubRepository> repositories),
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedUsers != null) {
      return loadedUsers(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadedUsers(LoadedUsers value),
    @required TResult loadedRepositories(LoadedRepositories value),
    @required TResult error(Error value),
  }) {
    assert(loadedUsers != null);
    assert(loadedRepositories != null);
    assert(error != null);
    return loadedUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadedUsers(LoadedUsers value),
    TResult loadedRepositories(LoadedRepositories value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedUsers != null) {
      return loadedUsers(this);
    }
    return orElse();
  }
}

abstract class LoadedUsers implements GitHubSearchResult {
  const factory LoadedUsers(List<GitHubUser> user) = _$LoadedUsers;

  List<GitHubUser> get user;
  @JsonKey(ignore: true)
  $LoadedUsersCopyWith<LoadedUsers> get copyWith;
}

/// @nodoc
abstract class $LoadedRepositoriesCopyWith<$Res> {
  factory $LoadedRepositoriesCopyWith(
          LoadedRepositories value, $Res Function(LoadedRepositories) then) =
      _$LoadedRepositoriesCopyWithImpl<$Res>;
  $Res call({List<GitHubRepository> repositories});
}

/// @nodoc
class _$LoadedRepositoriesCopyWithImpl<$Res>
    extends _$GitHubSearchResultCopyWithImpl<$Res>
    implements $LoadedRepositoriesCopyWith<$Res> {
  _$LoadedRepositoriesCopyWithImpl(
      LoadedRepositories _value, $Res Function(LoadedRepositories) _then)
      : super(_value, (v) => _then(v as LoadedRepositories));

  @override
  LoadedRepositories get _value => super._value as LoadedRepositories;

  @override
  $Res call({
    Object repositories = freezed,
  }) {
    return _then(LoadedRepositories(
      repositories == freezed
          ? _value.repositories
          : repositories as List<GitHubRepository>,
    ));
  }
}

/// @nodoc
class _$LoadedRepositories implements LoadedRepositories {
  const _$LoadedRepositories(this.repositories) : assert(repositories != null);

  @override
  final List<GitHubRepository> repositories;

  @override
  String toString() {
    return 'GitHubSearchResult.loadedRepositories(repositories: $repositories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadedRepositories &&
            (identical(other.repositories, repositories) ||
                const DeepCollectionEquality()
                    .equals(other.repositories, repositories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(repositories);

  @JsonKey(ignore: true)
  @override
  $LoadedRepositoriesCopyWith<LoadedRepositories> get copyWith =>
      _$LoadedRepositoriesCopyWithImpl<LoadedRepositories>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loadedUsers(List<GitHubUser> user),
    @required TResult loadedRepositories(List<GitHubRepository> repositories),
    @required TResult error(GitHubAPIError error),
  }) {
    assert(loadedUsers != null);
    assert(loadedRepositories != null);
    assert(error != null);
    return loadedRepositories(repositories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadedUsers(List<GitHubUser> user),
    TResult loadedRepositories(List<GitHubRepository> repositories),
    TResult error(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedRepositories != null) {
      return loadedRepositories(repositories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loadedUsers(LoadedUsers value),
    @required TResult loadedRepositories(LoadedRepositories value),
    @required TResult error(Error value),
  }) {
    assert(loadedUsers != null);
    assert(loadedRepositories != null);
    assert(error != null);
    return loadedRepositories(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadedUsers(LoadedUsers value),
    TResult loadedRepositories(LoadedRepositories value),
    TResult error(Error value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loadedRepositories != null) {
      return loadedRepositories(this);
    }
    return orElse();
  }
}

abstract class LoadedRepositories implements GitHubSearchResult {
  const factory LoadedRepositories(List<GitHubRepository> repositories) =
      _$LoadedRepositories;

  List<GitHubRepository> get repositories;
  @JsonKey(ignore: true)
  $LoadedRepositoriesCopyWith<LoadedRepositories> get copyWith;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({GitHubAPIError error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GitHubSearchResultCopyWithImpl<$Res>
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
      error == freezed ? _value.error : error as GitHubAPIError,
    ));
  }
}

/// @nodoc
class _$Error implements Error {
  const _$Error(this.error) : assert(error != null);

  @override
  final GitHubAPIError error;

  @override
  String toString() {
    return 'GitHubSearchResult.error(error: $error)';
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
  TResult when<TResult extends Object>({
    @required TResult loadedUsers(List<GitHubUser> user),
    @required TResult loadedRepositories(List<GitHubRepository> repositories),
    @required TResult error(GitHubAPIError error),
  }) {
    assert(loadedUsers != null);
    assert(loadedRepositories != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loadedUsers(List<GitHubUser> user),
    TResult loadedRepositories(List<GitHubRepository> repositories),
    TResult error(GitHubAPIError error),
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
  TResult map<TResult extends Object>({
    @required TResult loadedUsers(LoadedUsers value),
    @required TResult loadedRepositories(LoadedRepositories value),
    @required TResult error(Error value),
  }) {
    assert(loadedUsers != null);
    assert(loadedRepositories != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loadedUsers(LoadedUsers value),
    TResult loadedRepositories(LoadedRepositories value),
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

abstract class Error implements GitHubSearchResult {
  const factory Error(GitHubAPIError error) = _$Error;

  GitHubAPIError get error;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith;
}
