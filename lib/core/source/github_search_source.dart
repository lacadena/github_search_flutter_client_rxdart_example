import 'dart:async';

import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_user.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/repositories/github_search_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/core/source/apibase_source.dart';

enum APIError { rateLimitExceeded }

class GitHubSearchSourceImpl extends ApiBaseSource
    implements GitHubSearchSource {
  @override
  Future<Result<GitHubSearchResult>> searchRepositories(String query) {
    return get('repositories', query, (value){
      // final Map<String, dynamic> data = json.decode(response.body);
        final List<dynamic> items = value['items'];

        if (items?.isNotEmpty ?? false) {
          final repos = items.map((item) => GitHubRepository.fromJson(item)).toList();
          return GitHubSearchResult(repos);
        }
      //   return GitHubSearchResult.error(GitHubAPIError.parseError);
    });
  }

  @override
  Future<Result<GitHubSearchResult>> searchUsers(String query) {
    return get('users', query, (value){
       final List<dynamic> items = value['items'];
        if (items?.isNotEmpty ?? false) {
          final List<GitHubUser> users = items.map((item){
            final a = GitHubUser.fromJson(item);
            return a;
            }).toList();
          return GitHubSearchResult(users);
        }
    });
  }
}


