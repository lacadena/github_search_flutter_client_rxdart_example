import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/use_cases/github_search_usecase.dart';

abstract class GitHubSearchSource{
  Future<Result<GitHubSearchResult>> searchUsers(String user);
  Future<Result<GitHubSearchResult>> searchRepositories(String user);
}



class GitHubSearchRepositoryImpl extends GitHubSearchRepository {

  final GitHubSearchSource _gitHubSearchSource;

  GitHubSearchRepositoryImpl(this._gitHubSearchSource);

  @override
  Future<Result<GitHubSearchResult>> searchRepositories(String user) {
    return _gitHubSearchSource.searchRepositories(user);
  }
  
    @override
    Future<Result<GitHubSearchResult>> searchUsers(String user) {
    return _gitHubSearchSource.searchUsers(user);
  }
}