import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/app/widgets/github_repository_result_tile.dart';
import 'package:github_search_flutter_client_rxdart_example/app/widgets/search_place_holder.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service.dart';

import '../models/github_search_result.dart';
import '../services/github_search_service.dart';

class GitHubRepoSearchDelegate extends SearchDelegate<GitHubRepository> {
  GitHubRepoSearchDelegate(this.searchService);
  final GitHubSearchService searchService;

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // search-as-you-type if enabled
    searchService.searchRepo(query);
    return buildMatchingSuggestions(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // always search if submitted
    searchService.searchRepo(query);
    return buildMatchingSuggestions(context);
  }

  Widget buildMatchingSuggestions(BuildContext context) {
    final Map<GitHubAPIError, String> errorMessages = {
      GitHubAPIError.parseError: 'Error reading data from the API',
      GitHubAPIError.rateLimitExceeded: 'Rate limit exceeded',
      GitHubAPIError.unknownError: 'Unknown error',
    };
    // then return results
    return Container(
      decoration: BoxDecoration(
        color: Colors.white24
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: StreamBuilder<GitHubSearchResult>(
          stream: searchService.results,
          builder: (context, AsyncSnapshot<GitHubSearchResult> snapshot) {
            if (snapshot.hasData) {
              final result = snapshot.data;
              return result.when(
                loadedUsers: (users) => Center( child: Container() ),
                loadedRepositories: (repo) {
                  return GridView.builder(
                    itemCount: repo.length,
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 0.8,
                    ),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15.0)
                          ),
                          child: GitHubRepositorySearchResultTile(
                            repo: repo[index],
                            onSelected: (value) => close(context, value),
                          ),
                        ),
                      );
                    },
                  );
                },
                error: (error) => SearchPlaceholder(title: errorMessages[error]),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return query.isEmpty
        ? []
        : <Widget>[
      IconButton(
        tooltip: 'Clear',
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
          showSuggestions(context);
        },
      )
    ];
  }
}
