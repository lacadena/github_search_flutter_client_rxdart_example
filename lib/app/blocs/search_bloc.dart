import 'package:github_search_flutter_client_rxdart_example/app/blocs/provider/bloc.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/use_cases/github_search_usecase.dart';
import 'package:rxdart/rxdart.dart';

class GitHubSearchBloc extends Bloc {
  final GitHubSearchUseCase _githubSearchUseCase;

  Stream<Result<GitHubSearchResult>> _results;
  Stream<Result<GitHubSearchResult>> _resultsRepo;
  Stream<Result<GitHubSearchResult>> get results => _results;
  Stream<Result<GitHubSearchResult>> get resultsRepo => _resultsRepo;

  final _searchTerms = BehaviorSubject<String>();
  void search(String query) => _searchTerms.add(query);

  GitHubSearchBloc(this._githubSearchUseCase) {
    _results = _searchTerms.switchMap((query) async* {
      print('searching: $query');
          yield await searchUsers(query);
    });
    _resultsRepo = _searchTerms.switchMap((query) async* {
      print('searching: $query');
          yield await searchRepositories(query);
    });
  }

  // Output stream (search results)

  Future<Result<GitHubSearchResult>> searchUsers(String query) {
    return _githubSearchUseCase.searchUsers(query);
  }

  Future<Result<GitHubSearchResult>> searchRepositories(String query) {
    return _githubSearchUseCase.searchRepositories(query);
  }

  @override
  void dispose() {
    _searchTerms.close();
  }
}
