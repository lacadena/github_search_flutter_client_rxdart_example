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
    language: json['language'] as String,
    forks: json['forks'] as int,
    stargazersCount: json['stargazers_count'] as int,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$_$_GitHubRepositoryToJson(
        _$_GitHubRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'owner': instance.owner,
      'description': instance.description,
      'language': instance.language,
      'forks': instance.forks,
      'stargazers_count': instance.stargazersCount,
    };
