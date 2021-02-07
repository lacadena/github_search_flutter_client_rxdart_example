import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_repository.freezed.dart';
part 'github_repository.g.dart';

@freezed
abstract class GitHubRepository with _$GitHubRepository {
  const factory GitHubRepository({String name, Map<String, dynamic> owner, String description, String htmlUrl, int forks, int stars, int watch}) = _GitHubRepository;
  factory GitHubRepository.fromJson(Map<String, dynamic> json) => _$GitHubRepositoryFromJson(json);
}