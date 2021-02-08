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
  Data call(List<dynamic> items) {
    return Data(
      items,
    );
  }

// ignore: unused_element
  Error error(GitHubAPIError error) {
    return Error(
      error,
    );
  }

// ignore: unused_element
  GitHubError gitHubError(GitHubAPIError error) {
    return GitHubError(
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
  TResult when<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    @required TResult error(GitHubAPIError error),
    @required TResult gitHubError(GitHubAPIError error),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    TResult error(GitHubAPIError error),
    TResult gitHubError(GitHubAPIError error),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
    @required TResult gitHubError(GitHubError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    TResult gitHubError(GitHubError value),
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
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res>;
  $Res call({List<dynamic> items});
}

/// @nodoc
class _$DataCopyWithImpl<$Res> extends _$GitHubSearchResultCopyWithImpl<$Res>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(Data _value, $Res Function(Data) _then)
      : super(_value, (v) => _then(v as Data));

  @override
  Data get _value => super._value as Data;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(Data(
      items == freezed ? _value.items : items as List<dynamic>,
    ));
  }
}

/// @nodoc
class _$Data implements Data {
  const _$Data(this.items) : assert(items != null);

  @override
  final List<dynamic> items;

  @override
  String toString() {
    return 'GitHubSearchResult(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Data &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  $DataCopyWith<Data> get copyWith =>
      _$DataCopyWithImpl<Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    @required TResult error(GitHubAPIError error),
    @required TResult gitHubError(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    assert(gitHubError != null);
    return $default(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    TResult error(GitHubAPIError error),
    TResult gitHubError(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
    @required TResult gitHubError(GitHubError value),
  }) {
    assert($default != null);
    assert(error != null);
    assert(gitHubError != null);
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    TResult gitHubError(GitHubError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data implements GitHubSearchResult {
  const factory Data(List<dynamic> items) = _$Data;

  List<dynamic> get items;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith;
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
  TResult when<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    @required TResult error(GitHubAPIError error),
    @required TResult gitHubError(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    assert(gitHubError != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    TResult error(GitHubAPIError error),
    TResult gitHubError(GitHubAPIError error),
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
    @required TResult gitHubError(GitHubError value),
  }) {
    assert($default != null);
    assert(error != null);
    assert(gitHubError != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    TResult gitHubError(GitHubError value),
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

/// @nodoc
abstract class $GitHubErrorCopyWith<$Res> {
  factory $GitHubErrorCopyWith(
          GitHubError value, $Res Function(GitHubError) then) =
      _$GitHubErrorCopyWithImpl<$Res>;
  $Res call({GitHubAPIError error});
}

/// @nodoc
class _$GitHubErrorCopyWithImpl<$Res>
    extends _$GitHubSearchResultCopyWithImpl<$Res>
    implements $GitHubErrorCopyWith<$Res> {
  _$GitHubErrorCopyWithImpl(
      GitHubError _value, $Res Function(GitHubError) _then)
      : super(_value, (v) => _then(v as GitHubError));

  @override
  GitHubError get _value => super._value as GitHubError;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(GitHubError(
      error == freezed ? _value.error : error as GitHubAPIError,
    ));
  }
}

/// @nodoc
class _$GitHubError implements GitHubError {
  const _$GitHubError(this.error) : assert(error != null);

  @override
  final GitHubAPIError error;

  @override
  String toString() {
    return 'GitHubSearchResult.gitHubError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GitHubError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $GitHubErrorCopyWith<GitHubError> get copyWith =>
      _$GitHubErrorCopyWithImpl<GitHubError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    @required TResult error(GitHubAPIError error),
    @required TResult gitHubError(GitHubAPIError error),
  }) {
    assert($default != null);
    assert(error != null);
    assert(gitHubError != null);
    return gitHubError(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>(
    TResult $default(List<dynamic> items), {
    TResult error(GitHubAPIError error),
    TResult gitHubError(GitHubAPIError error),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gitHubError != null) {
      return gitHubError(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>(
    TResult $default(Data value), {
    @required TResult error(Error value),
    @required TResult gitHubError(GitHubError value),
  }) {
    assert($default != null);
    assert(error != null);
    assert(gitHubError != null);
    return gitHubError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>(
    TResult $default(Data value), {
    TResult error(Error value),
    TResult gitHubError(GitHubError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (gitHubError != null) {
      return gitHubError(this);
    }
    return orElse();
  }
}

abstract class GitHubError implements GitHubSearchResult {
  const factory GitHubError(GitHubAPIError error) = _$GitHubError;

  GitHubAPIError get error;
  @JsonKey(ignore: true)
  $GitHubErrorCopyWith<GitHubError> get copyWith;
}
