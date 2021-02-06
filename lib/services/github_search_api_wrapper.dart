import 'dart:convert';

import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:http/http.dart' as http;

import '../models/github_search_result.dart';
import '../models/github_user.dart';

class GitHubSearchAPIWrapper {
  Uri searchUsernameUri(String username) => Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: 'search/users',
        queryParameters: {'q': username},
      );

  Uri searchRepositoryNameUri(String reponame) => Uri(
    scheme: 'https',
    host: 'api.github.com',
    path: 'search/repositories',
    queryParameters: {'q': reponame},
  );

  Future<GitHubSearchResult> searchUser(String username) async {
    final uri = searchUsernameUri(username);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> items = data['items'];
      if (items?.isNotEmpty ?? false) {
        final users = items.map((item) => GitHubUser.fromJson(item)).toList();
        return GitHubSearchResult.loadedUsers(users);
      }
      return GitHubSearchResult.error(GitHubAPIError.parseError);
    }
    if (response.statusCode == 403) {
      return GitHubSearchResult.error(GitHubAPIError.rateLimitExceeded);
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    return GitHubSearchResult.error(GitHubAPIError.unknownError);
  }

  Future<GitHubSearchResult> searchRepository(String reponame) async{
    final uri = searchRepositoryNameUri(reponame);
    final response = await http.get(uri);
    if(response.statusCode == 200){
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> items = data['items'];

      if(items?.isNotEmpty ?? false){
        final repositories = items.map((item)=> GitHubRepository.fromJson(item)).toList();
        return GitHubSearchResult.loadedRepositories(repositories);
      }

      return GitHubSearchResult.error(GitHubAPIError.parseError);
    }
    if (response.statusCode == 403) {
      return GitHubSearchResult.error(GitHubAPIError.rateLimitExceeded);
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    return GitHubSearchResult.error(GitHubAPIError.unknownError);
  }
}
