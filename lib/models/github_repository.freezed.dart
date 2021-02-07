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
      {String name,
      Map<String, dynamic> owner,
      String description,
      String language,
      int forks,
      int stargazersCount}) {
    return _GitHubRepository(
      name: name,
      owner: owner,
      description: description,
      language: language,
      forks: forks,
      stargazersCount: stargazersCount,
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
  Map<String, dynamic> get owner;
  String get description;
  String get language;
  int get forks;
  int get stargazersCount;

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
      Map<String, dynamic> owner,
      String description,
      String language,
      int forks,
      int stargazersCount});
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
    Object owner = freezed,
    Object description = freezed,
    Object language = freezed,
    Object forks = freezed,
    Object stargazersCount = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      owner: owner == freezed ? _value.owner : owner as Map<String, dynamic>,
      description:
          description == freezed ? _value.description : description as String,
      language: language == freezed ? _value.language : language as String,
      forks: forks == freezed ? _value.forks : forks as int,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount as int,
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
      Map<String, dynamic> owner,
      String description,
      String language,
      int forks,
      int stargazersCount});
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
    Object owner = freezed,
    Object description = freezed,
    Object language = freezed,
    Object forks = freezed,
    Object stargazersCount = freezed,
  }) {
    return _then(_GitHubRepository(
      name: name == freezed ? _value.name : name as String,
      owner: owner == freezed ? _value.owner : owner as Map<String, dynamic>,
      description:
          description == freezed ? _value.description : description as String,
      language: language == freezed ? _value.language : language as String,
      forks: forks == freezed ? _value.forks : forks as int,
      stargazersCount: stargazersCount == freezed
          ? _value.stargazersCount
          : stargazersCount as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GitHubRepository implements _GitHubRepository {
  const _$_GitHubRepository(
      {this.name,
      this.owner,
      this.description,
      this.language,
      this.forks,
      this.stargazersCount});

  factory _$_GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$_$_GitHubRepositoryFromJson(json);

  @override
  final String name;
  @override
  final Map<String, dynamic> owner;
  @override
  final String description;
  @override
  final String language;
  @override
  final int forks;
  @override
  final int stargazersCount;

  @override
  String toString() {
    return 'GitHubRepository(name: $name, owner: $owner, description: $description, language: $language, forks: $forks, stargazersCount: $stargazersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GitHubRepository &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.owner, owner) ||
                const DeepCollectionEquality().equals(other.owner, owner)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.language, language) ||
                const DeepCollectionEquality()
                    .equals(other.language, language)) &&
            (identical(other.forks, forks) ||
                const DeepCollectionEquality().equals(other.forks, forks)) &&
            (identical(other.stargazersCount, stargazersCount) ||
                const DeepCollectionEquality()
                    .equals(other.stargazersCount, stargazersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(owner) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(language) ^
      const DeepCollectionEquality().hash(forks) ^
      const DeepCollectionEquality().hash(stargazersCount);

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
      {String name,
      Map<String, dynamic> owner,
      String description,
      String language,
      int forks,
      int stargazersCount}) = _$_GitHubRepository;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepository.fromJson;

  @override
  String get name;
  @override
  Map<String, dynamic> get owner;
  @override
  String get description;
  @override
  String get language;
  @override
  int get forks;
  @override
  int get stargazersCount;
  @override
  @JsonKey(ignore: true)
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith;
}
