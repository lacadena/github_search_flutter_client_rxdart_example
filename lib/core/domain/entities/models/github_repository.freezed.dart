// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GitHubRepository _$GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _GitHubRepository.fromJson(json);
}

/// @nodoc
class _$GitHubRepositoryTearOff {
  const _$GitHubRepositoryTearOff();

// ignore: unused_element
  _GitHubRepository call(
      String name,
      String fullName,
      bool private,
      GitHubUser owner,
      String url,
      int openIssuesCount,
      double score,
      int size) {
    return _GitHubRepository(
      name,
      fullName,
      private,
      owner,
      url,
      openIssuesCount,
      score,
      size,
    );
  }

// ignore: unused_element
  GitHubRepository fromJson(Map<String, Object> json) {
    return GitHubRepository.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubRepository = _$GitHubRepositoryTearOff();

/// @nodoc
mixin _$GitHubRepository {
  String get name;
  String get fullName;
  bool get private;
  GitHubUser get owner;
  String get url;
  int get openIssuesCount;
  double get score;
  int get size;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GitHubRepositoryCopyWith<GitHubRepository> get copyWith;
}

/// @nodoc
abstract class $GitHubRepositoryCopyWith<$Res> {
  factory $GitHubRepositoryCopyWith(
          GitHubRepository value, $Res Function(GitHubRepository) then) =
      _$GitHubRepositoryCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String fullName,
      bool private,
      GitHubUser owner,
      String url,
      int openIssuesCount,
      double score,
      int size});
}

/// @nodoc
class _$GitHubRepositoryCopyWithImpl<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  _$GitHubRepositoryCopyWithImpl(this._value, this._then);

  final GitHubRepository _value;
  // ignore: unused_field
  final $Res Function(GitHubRepository) _then;

  @override
  $Res call({
    Object name = freezed,
    Object fullName = freezed,
    Object private = freezed,
    Object owner = freezed,
    Object url = freezed,
    Object openIssuesCount = freezed,
    Object score = freezed,
    Object size = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      fullName: fullName == freezed ? _value.fullName : fullName as String,
      private: private == freezed ? _value.private : private as bool,
      owner: owner == freezed ? _value.owner : owner as GitHubUser,
      url: url == freezed ? _value.url : url as String,
      openIssuesCount: openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount as int,
      score: score == freezed ? _value.score : score as double,
      size: size == freezed ? _value.size : size as int,
    ));
  }
}

/// @nodoc
abstract class _$GitHubRepositoryCopyWith<$Res>
    implements $GitHubRepositoryCopyWith<$Res> {
  factory _$GitHubRepositoryCopyWith(
          _GitHubRepository value, $Res Function(_GitHubRepository) then) =
      __$GitHubRepositoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String fullName,
      bool private,
      GitHubUser owner,
      String url,
      int openIssuesCount,
      double score,
      int size});
}

/// @nodoc
class __$GitHubRepositoryCopyWithImpl<$Res>
    extends _$GitHubRepositoryCopyWithImpl<$Res>
    implements _$GitHubRepositoryCopyWith<$Res> {
  __$GitHubRepositoryCopyWithImpl(
      _GitHubRepository _value, $Res Function(_GitHubRepository) _then)
      : super(_value, (v) => _then(v as _GitHubRepository));

  @override
  _GitHubRepository get _value => super._value as _GitHubRepository;

  @override
  $Res call({
    Object name = freezed,
    Object fullName = freezed,
    Object private = freezed,
    Object owner = freezed,
    Object url = freezed,
    Object openIssuesCount = freezed,
    Object score = freezed,
    Object size = freezed,
  }) {
    return _then(_GitHubRepository(
      name == freezed ? _value.name : name as String,
      fullName == freezed ? _value.fullName : fullName as String,
      private == freezed ? _value.private : private as bool,
      owner == freezed ? _value.owner : owner as GitHubUser,
      url == freezed ? _value.url : url as String,
      openIssuesCount == freezed
          ? _value.openIssuesCount
          : openIssuesCount as int,
      score == freezed ? _value.score : score as double,
      size == freezed ? _value.size : size as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GitHubRepository implements _GitHubRepository {
  const _$_GitHubRepository(this.name, this.fullName, this.private, this.owner,
      this.url, this.openIssuesCount, this.score, this.size)
      : assert(name != null),
        assert(fullName != null),
        assert(private != null),
        assert(owner != null),
        assert(url != null),
        assert(openIssuesCount != null),
        assert(score != null),
        assert(size != null);

  factory _$_GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$_$_GitHubRepositoryFromJson(json);

  @override
  final String name;
  @override
  final String fullName;
  @override
  final bool private;
  @override
  final GitHubUser owner;
  @override
  final String url;
  @override
  final int openIssuesCount;
  @override
  final double score;
  @override
  final int size;

  @override
  String toString() {
    return 'GitHubRepository(name: $name, fullName: $fullName, private: $private, owner: $owner, url: $url, openIssuesCount: $openIssuesCount, score: $score, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GitHubRepository &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.fullName, fullName) ||
                const DeepCollectionEquality()
                    .equals(other.fullName, fullName)) &&
            (identical(other.private, private) ||
                const DeepCollectionEquality()
                    .equals(other.private, private)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.openIssuesCount, openIssuesCount) ||
                const DeepCollectionEquality()
                    .equals(other.openIssuesCount, openIssuesCount)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)) &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(fullName) ^
      const DeepCollectionEquality().hash(private) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(openIssuesCount) ^
      const DeepCollectionEquality().hash(score) ^
      const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith =>
      __$GitHubRepositoryCopyWithImpl<_GitHubRepository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GitHubRepositoryToJson(this);
  }
}

abstract class _GitHubRepository implements GitHubRepository {
  const factory _GitHubRepository(
      String name,
      String fullName,
      bool private,
      GitHubUser owner,
      String url,
      int openIssuesCount,
      double score,
      int size) = _$_GitHubRepository;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepository.fromJson;

  @override
  String get name;
  @override
  String get fullName;
  @override
  bool get private;
  @override
  GitHubUser get owner;
  @override
  String get url;
  @override
  int get openIssuesCount;
  @override
  double get score;
  @override
  int get size;
  @override
  @JsonKey(ignore: true)
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith;
}
