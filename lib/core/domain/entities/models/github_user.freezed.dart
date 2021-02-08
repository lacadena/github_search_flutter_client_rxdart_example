// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'github_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
GitHubUser _$GitHubUserFromJson(Map<String, dynamic> json) {
  return _GitHubUser.fromJson(json);
}

/// @nodoc
class _$GitHubUserTearOff {
  const _$GitHubUserTearOff();

// ignore: unused_element
  _GitHubUser call(
      String login, String avatarUrl, String htmlUrl, double score) {
    return _GitHubUser(
      login,
      avatarUrl,
      htmlUrl,
      score,
    );
  }

// ignore: unused_element
  GitHubUser fromJson(Map<String, Object> json) {
    return GitHubUser.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $GitHubUser = _$GitHubUserTearOff();

/// @nodoc
mixin _$GitHubUser {
  String get login;
  String get avatarUrl;
  String get htmlUrl;
  double get score;

  Map<String, dynamic> toJson();
  @JsonKey(ignore: true)
  $GitHubUserCopyWith<GitHubUser> get copyWith;
}

/// @nodoc
abstract class $GitHubUserCopyWith<$Res> {
  factory $GitHubUserCopyWith(
          GitHubUser value, $Res Function(GitHubUser) then) =
      _$GitHubUserCopyWithImpl<$Res>;
  $Res call({String login, String avatarUrl, String htmlUrl, double score});
}

/// @nodoc
class _$GitHubUserCopyWithImpl<$Res> implements $GitHubUserCopyWith<$Res> {
  _$GitHubUserCopyWithImpl(this._value, this._then);

  final GitHubUser _value;
  // ignore: unused_field
  final $Res Function(GitHubUser) _then;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
    Object htmlUrl = freezed,
    Object score = freezed,
  }) {
    return _then(_value.copyWith(
      login: login == freezed ? _value.login : login as String,
      avatarUrl: avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      htmlUrl: htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
      score: score == freezed ? _value.score : score as double,
    ));
  }
}

/// @nodoc
abstract class _$GitHubUserCopyWith<$Res> implements $GitHubUserCopyWith<$Res> {
  factory _$GitHubUserCopyWith(
          _GitHubUser value, $Res Function(_GitHubUser) then) =
      __$GitHubUserCopyWithImpl<$Res>;
  @override
  $Res call({String login, String avatarUrl, String htmlUrl, double score});
}

/// @nodoc
class __$GitHubUserCopyWithImpl<$Res> extends _$GitHubUserCopyWithImpl<$Res>
    implements _$GitHubUserCopyWith<$Res> {
  __$GitHubUserCopyWithImpl(
      _GitHubUser _value, $Res Function(_GitHubUser) _then)
      : super(_value, (v) => _then(v as _GitHubUser));

  @override
  _GitHubUser get _value => super._value as _GitHubUser;

  @override
  $Res call({
    Object login = freezed,
    Object avatarUrl = freezed,
    Object htmlUrl = freezed,
    Object score = freezed,
  }) {
    return _then(_GitHubUser(
      login == freezed ? _value.login : login as String,
      avatarUrl == freezed ? _value.avatarUrl : avatarUrl as String,
      htmlUrl == freezed ? _value.htmlUrl : htmlUrl as String,
      score == freezed ? _value.score : score as double,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_GitHubUser implements _GitHubUser {
  const _$_GitHubUser(this.login, this.avatarUrl, this.htmlUrl, this.score)
      : assert(login != null),
        assert(avatarUrl != null),
        assert(htmlUrl != null),
        assert(score != null);

  factory _$_GitHubUser.fromJson(Map<String, dynamic> json) =>
      _$_$_GitHubUserFromJson(json);

  @override
  final String login;
  @override
  final String avatarUrl;
  @override
  final String htmlUrl;
  @override
  final double score;

  @override
  String toString() {
    return 'GitHubUser(login: $login, avatarUrl: $avatarUrl, htmlUrl: $htmlUrl, score: $score)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GitHubUser &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)) &&
            (identical(other.htmlUrl, htmlUrl) ||
                const DeepCollectionEquality()
                    .equals(other.htmlUrl, htmlUrl)) &&
            (identical(other.score, score) ||
                const DeepCollectionEquality().equals(other.score, score)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(avatarUrl) ^
      const DeepCollectionEquality().hash(htmlUrl) ^
      const DeepCollectionEquality().hash(score);

  @JsonKey(ignore: true)
  @override
  _$GitHubUserCopyWith<_GitHubUser> get copyWith =>
      __$GitHubUserCopyWithImpl<_GitHubUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GitHubUserToJson(this);
  }
}

abstract class _GitHubUser implements GitHubUser {
  const factory _GitHubUser(
          String login, String avatarUrl, String htmlUrl, double score) =
      _$_GitHubUser;

  factory _GitHubUser.fromJson(Map<String, dynamic> json) =
      _$_GitHubUser.fromJson;

  @override
  String get login;
  @override
  String get avatarUrl;
  @override
  String get htmlUrl;
  @override
  double get score;
  @override
  @JsonKey(ignore: true)
  _$GitHubUserCopyWith<_GitHubUser> get copyWith;
}
