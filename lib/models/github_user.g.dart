// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubUser _$_$_GitHubUserFromJson(Map<String, dynamic> json) {
  return _$_GitHubUser(
    login: json['login'] as String,
    avatarUrl: json['avatar_url'] as String,
    htmlUrl: json['html_url'] as String,
  );
}

Map<String, dynamic> _$_$_GitHubUserToJson(_$_GitHubUser instance) =>
    <String, dynamic>{
      'login': instance.login,
      'avatar_url': instance.avatarUrl,
      'html_url': instance.htmlUrl,
    };
