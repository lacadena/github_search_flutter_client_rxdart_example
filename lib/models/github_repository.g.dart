// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

// ignore: non_constant_identifier_names
_$_GitHubRepository _$_$_GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _$_GitHubRepository(
    name: json['name'] as String,
    owner: json['owner'] as Map<String, dynamic>,
    description: json['description'] as String,
    htmlUrl: json['html_url'] as String,
    forks: json['forks_count'] as int,
    stars: json['stargazers_count'] as int,
    watch: json['watchers_count'] as int,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_GitHubRepositoryToJson(
        _$_GitHubRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'description': instance.description,
      'htmlUrl': instance.htmlUrl,
      'forks': instance.forks,
      'stars': instance.stars,
      'watch': instance.watch,
    };
