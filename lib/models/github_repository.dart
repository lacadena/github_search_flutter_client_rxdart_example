import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
abstract class GitHubRepository with _$GitHubRepository{
  const factory GitHubRepository({
    @required String name,
    @JsonKey(name:"display_name") String displayName,
    @JsonKey(name:"short_description") String shortDescription,
    @JsonKey(name:"description") String description,
    @JsonKey(name:"updated_at") String updatedAt,
    @JsonKey(name:"score") double score
  }) = _GitHubRepository;

  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}