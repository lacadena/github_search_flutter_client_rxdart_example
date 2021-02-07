import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';

part 'github_search_result_repository.freezed.dart';

enum GitHubAPIErrorRepository { rateLimitExceeded, parseError, unknownError }

@freezed
abstract class GitHubSearchResultRepository with _$GitHubSearchResultRepository {
  const factory GitHubSearchResultRepository(List<GitHubRepository> repository) = Data;
  const factory GitHubSearchResultRepository.error(GitHubAPIErrorRepository error) = Error;
}
