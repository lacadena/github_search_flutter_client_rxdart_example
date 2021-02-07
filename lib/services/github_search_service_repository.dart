import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_api_wrapper.dart';
import 'package:rxdart/rxdart.dart';

enum APIErrorRepository { rateLimitExceeded }

class GitHubSearchServiceRepository {
  GitHubSearchServiceRepository({@required this.apiRepository}) {
    // Implementation based on: https://youtu.be/7O1UO5rEpRc
    // ReactiveConf 2018 - Brian Egan & Filip Hracek: Practical Rx with Flutter
    _results = _searchTerms
        .debounce((_) => TimerStream(true, Duration(milliseconds: 300)))
        .switchMap((query) async* {
      // print('searching: $query');
      yield await apiRepository.searchRepository(query);
    }); // discard previous events
  }
  final GitHubSearchAPIWrapper apiRepository;

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