// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repository.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GitHubRepository _$_$_GitHubRepositoryFromJson(Map<String, dynamic> json) {
  return _$_GitHubRepository(
    name: json['name'] as String,
    displayName: json['display_name'] as String,
    shortDescription: json['short_description'] as String,
    description: json['description'] as String,
    updatedAt: json['updated_at'] as String,
    score: (json['score'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$_$_GitHubRepositoryToJson(
        _$_GitHubRepository instance) =>
    <String, dynamic>{
      'name': instance.name,
      'display_name': instance.displayName,
      'short_description': instance.shortDescription,
      'description': instance.description,
      'updated_at': instance.updatedAt,
      'score': instance.score,
    };
