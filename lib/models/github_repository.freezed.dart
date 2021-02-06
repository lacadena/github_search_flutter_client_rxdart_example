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
      {@required String name,
      @JsonKey(name: "display_name") String displayName,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "updated_at") String updatedAt,
      @JsonKey(name: "score") double score}) {
    return _GitHubRepository(
      name: name,
      displayName: displayName,
      shortDescription: shortDescription,
      description: description,
      updatedAt: updatedAt,
      score: score,
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
  @JsonKey(name: "display_name")
  String get displayName;
  @JsonKey(name: "short_description")
  String get shortDescription;
  @JsonKey(name: "description")
  String get description;
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @JsonKey(name: "score")
  double get score;

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
      @JsonKey(name: "display_name") String displayName,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "updated_at") String updatedAt,
      @JsonKey(name: "score") double score});
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
    Object displayName = freezed,
    Object shortDescription = freezed,
    Object description = freezed,
    Object updatedAt = freezed,
    Object score = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      description:
          description == freezed ? _value.description : description as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      score: score == freezed ? _value.score : score as double,
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
      @JsonKey(name: "display_name") String displayName,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "updated_at") String updatedAt,
      @JsonKey(name: "score") double score});
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
    Object displayName = freezed,
    Object shortDescription = freezed,
    Object description = freezed,
    Object updatedAt = freezed,
    Object score = freezed,
  }) {
    return _then(_GitHubRepository(
      name: name == freezed ? _value.name : name as String,
      displayName:
          displayName == freezed ? _value.displayName : displayName as String,
      shortDescription: shortDescription == freezed
          ? _value.shortDescription
          : shortDescription as String,
      description:
          description == freezed ? _value.description : description as String,
      updatedAt: updatedAt == freezed ? _value.updatedAt : updatedAt as String,
      score: score == freezed ? _value.score : score as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GitHubRepository
    with DiagnosticableTreeMixin
    implements _GitHubRepository {
  const _$_GitHubRepository(
      {@required this.name,
      @JsonKey(name: "display_name") this.displayName,
      @JsonKey(name: "short_description") this.shortDescription,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "updated_at") this.updatedAt,
      @JsonKey(name: "score") this.score})
      : assert(name != null);

  factory _$_GitHubRepository.fromJson(Map<String, dynamic> json) =>
      _$_$_GitHubRepositoryFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: "display_name")
  final String displayName;
  @override
  @JsonKey(name: "short_description")
  final String shortDescription;
  @override
  @JsonKey(name: "description")
  final String description;
  @override
  @JsonKey(name: "updated_at")
  final String updatedAt;
  @override
  @JsonKey(name: "score")
  final double score;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'GitHubRepository(name: $name, displayName: $displayName, shortDescription: $shortDescription, description: $description, updatedAt: $updatedAt, score: $score)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GitHubRepository'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('displayName', displayName))
      ..add(DiagnosticsProperty('shortDescription', shortDescription))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('updatedAt', updatedAt))
      ..add(DiagnosticsProperty('score', score));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GitHubRepository &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.displayName, displayName) ||
                const DeepCollectionEquality()
                    .equals(other.displayName, displayName)) &&
            (identical(other.shortDescription, shortDescription) ||
                const DeepCollectionEquality()
                    .equals(other.shortDescription, shortDescription)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.updatedAt, updatedAt) ||
                const DeepCollectionEquality()
                    .equals(other.updatedAt, updatedAt)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(displayName) ^
      const DeepCollectionEquality().hash(shortDescription) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(updatedAt) ^
      const DeepCollectionEquality().hash(score);

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
      {@required String name,
      @JsonKey(name: "display_name") String displayName,
      @JsonKey(name: "short_description") String shortDescription,
      @JsonKey(name: "description") String description,
      @JsonKey(name: "updated_at") String updatedAt,
      @JsonKey(name: "score") double score}) = _$_GitHubRepository;

  factory _GitHubRepository.fromJson(Map<String, dynamic> json) =
      _$_GitHubRepository.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: "display_name")
  String get displayName;
  @override
  @JsonKey(name: "short_description")
  String get shortDescription;
  @override
  @JsonKey(name: "description")
  String get description;
  @override
  @JsonKey(name: "updated_at")
  String get updatedAt;
  @override
  @JsonKey(name: "score")
  double get score;
  @override
  @JsonKey(ignore: true)
  _$GitHubRepositoryCopyWith<_GitHubRepository> get copyWith;
}
