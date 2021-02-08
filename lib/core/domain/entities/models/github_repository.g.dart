// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepository _$_$_GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _$_GitHubRepository(
    json['name'] as String,
    json['full_name'] as String,
    json['private'] as bool,
    GitHubUser.fromJson(json['owner']),
    json['url'] as String,
    json['open_issues_count'] as int,
    (json['score'] as num)?.toDouble(),
    json['size'] as int,
  );
}

Map<String, dynamic> _$_$_GitHubRepositoryToJson(
        _$_GitHubRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'full_name': instance.fullName,
      'private': instance.private,
      'owner': instance.owner,
      'url': instance.url,
      'open_issues_count': instance.openIssuesCount,
      'score': instance.score,
      'size': instance.size,
    };
