import 'package:freezed_annotation/freezed_annotation.dart';

import 'github_user.dart';
import 'github_repository.dart';

part 'github_search_result.freezed.dart';

enum GitHubAPIError { rateLimitExceeded, parseError, unknownError }

@freezed
abstract class GitHubSearchResult with _$GitHubSearchResult {
  const factory GitHubSearchResult.loadedUsers(List<GitHubUser> user) = LoadedUsers;
  const factory GitHubSearchResult.loadedRepositories(List<GitHubRepository> repositories) = LoadedRepositories;
  const factory GitHubSearchResult.error(GitHubAPIError error) = Error;
}
