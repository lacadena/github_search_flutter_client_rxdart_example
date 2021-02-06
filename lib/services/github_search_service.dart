import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_api_wrapper.dart';
import 'package:rxdart/rxdart.dart';

enum APIError { rateLimitExceeded }
enum SearchType { user, repository }

class GitHubSearchService {
  GitHubSearchService(SearchType type, {@required this.apiWrapper}) {
    // Implementation based on: https://youtu.be/7O1UO5rEpRc
    // ReactiveConf 2018 - Brian Egan & Filip Hracek: Practical Rx with Flutter
    if( type == SearchType.user) {
      _results = _searchTerms
          .debounce((_) => TimerStream(true, Duration(milliseconds: 250)))
          .switchMap((query) async* {
        print('searching: $query');
        yield await apiWrapper.searchUser(query);
      }); // discard previous events
    }

    if( type == SearchType.repository ){
      _results = _searchRepos
          .debounce((_) => TimerStream(true, Duration(milliseconds: 250)))
          .switchMap((query) async* {
        print('searching: $query');
        yield await apiWrapper.searchRepository(query);
      }); // discard previous events
    }

  }
  final GitHubSearchAPIWrapper apiWrapper;

  // Input stream (search terms)
  final _searchTerms = BehaviorSubject<String>();
  void searchUser(String query) => _searchTerms.add(query);

  // Input stream (search terms)
  final _searchRepos = BehaviorSubject<String>();
  void searchRepo(String query) => _searchRepos.add(query);

  // Output stream (search results)
  Stream<GitHubSearchResult> _results;
  Stream<GitHubSearchResult> get results => _results;

  void dispose() {
    _searchTerms.close();
    _searchRepos.close();
  }
}
