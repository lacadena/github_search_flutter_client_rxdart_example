import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result_repository.dart';
import 'package:rxdart/rxdart.dart';

import 'github_search_api_wrapper_repository.dart';

enum APIErrorRepository { rateLimitExceeded }

class GitHubSearchServiceRepository {
  GitHubSearchServiceRepository({@required this.apiWrapperRepository}) {
    // Implementation based on: https://youtu.be/7O1UO5rEpRc
    // ReactiveConf 2018 - Brian Egan & Filip Hracek: Practical Rx with Flutter
    _results = _searchTerms
        .debounce((_) => TimerStream(true, Duration(milliseconds: 250)))
        .switchMap((query) async* {
      print('searching: $query');
      yield await apiWrapperRepository.searchRepository(query);
    }); // discard previous events
  }
  final GitHubSearchAPIWrapperRepository apiWrapperRepository;

  // Input stream (search terms)
  final _searchTerms = BehaviorSubject<String>();
  void searchRepository(String query) => _searchTerms.add(query);

  // Output stream (search results)
  Stream<GitHubSearchResultRepository> _results;
  Stream<GitHubSearchResultRepository> get results => _results;

  void dispose() {
    _searchTerms.close();
  }
}
