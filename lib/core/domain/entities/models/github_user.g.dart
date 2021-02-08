// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubUser _$_$_GitHubUserFromJson(Map<String, dynamic> json) {
  print(json['score']);
  return _$_GitHubUser(
    json['login'] as String,
    json['avatar_url'] as String,
    json['html_url'] as String,
    (json['score'] != null)?(json['score'] as num)?.toDouble():0.0,
  );
}

Map<String, dynamic> _$_$_GitHubUserToJson(_$_GitHubUser instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
      'score': instance.score,
    };
