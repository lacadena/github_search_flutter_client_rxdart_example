import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/result.dart';

abstract class GitHubSearchRepository{
  Future<Result<GitHubSearchResult>> searchUsers(String user);
  Future<Result<GitHubSearchResult>> searchRepositories(String user);
  
}
abstract class GitHubSearchUseCase{
  Future<Result<GitHubSearchResult>> searchUsers(String user);
  Future<Result<GitHubSearchResult>> searchRepositories(String user);
}

class GitHubSearchUseCaseImpl implements  GitHubSearchUseCase{

  final GitHubSearchRepository _searchRepository;

  GitHubSearchUseCaseImpl(this._searchRepository);

  @override
  Future<Result<GitHubSearchResult>> searchRepositories(String user) {
    return _searchRepository.searchRepositories(user);
  }

  @override
  Future<Result<GitHubSearchResult>> searchUsers(String user) {
    return _searchRepository.searchUsers(user);
  }

  
}