
import 'package:freezed_annotation/freezed_annotation.dart';

part 'github_search_result.freezed.dart';

enum GitHubAPIError { rateLimitExceeded, parseError, unknownError }
enum APIError { unknownError }

@freezed
abstract class GitHubSearchResult with _$GitHubSearchResult {
  const factory GitHubSearchResult(List<dynamic> items) = Data;
  const factory GitHubSearchResult.error(GitHubAPIError error) = Error;
  const factory GitHubSearchResult.gitHubError(GitHubAPIError error) = GitHubError;
}
