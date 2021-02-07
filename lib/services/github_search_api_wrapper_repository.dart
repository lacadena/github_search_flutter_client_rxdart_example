import 'dart:convert';

import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result_repository.dart';
import 'package:http/http.dart' as http;

class GitHubSearchAPIWrapperRepository {
  Uri searchRepositorynameUri(String repositoryname) => Uri(
        scheme: 'https',
        host: 'api.github.com',
        path: 'search/repositories',
        queryParameters: {'q': repositoryname},
      );

  Future<GitHubSearchResultRepository> searchRepository(String repositoryname) async {
    final uri = searchRepositorynameUri(repositoryname);
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      final List<dynamic> items = data['items'];
      if (items?.isNotEmpty ?? false) {
        final repositories = items.map((item) => GitHubRepository.fromJson(item)).toList();
        return GitHubSearchResultRepository(repositories);
      }
      return GitHubSearchResultRepository.error(GitHubAPIErrorRepository.parseError);
    }
    if (response.statusCode == 403) {
      return GitHubSearchResultRepository.error(GitHubAPIErrorRepository.rateLimitExceeded);
    }
    print(
        'Request $uri failed\nResponse: ${response.statusCode} ${response.reasonPhrase}');
    return GitHubSearchResultRepository.error(GitHubAPIErrorRepository.unknownError);
  }
}
