import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/app/github_repo_search_delegate.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';

import '../app/github_search_delegate.dart';
import '../models/github_user.dart';
import '../services/github_search_api_wrapper.dart';
import '../services/github_search_service.dart';

class HomePage extends StatelessWidget {

  void _showSearch(BuildContext context, SearchType type) async {
    final searchService =
    GitHubSearchService(type, apiWrapper: GitHubSearchAPIWrapper());
    if( type == SearchType.user ){
      final user = await showSearch<GitHubUser>(
        context: context,
        delegate: GitHubSearchDelegate(searchService),
      );
    }
    if( type == SearchType.repository ){
      final repo = await showSearch<GitHubRepository>(
        context: context,
        delegate: GitHubRepoSearchDelegate(searchService),
      );
    }
    searchService.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Search Users',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white)),
              onPressed: () => _showSearch(context, SearchType.user),
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Search Repositories',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white)),
              onPressed: () => _showSearch(context, SearchType.repository),
            )
          ],
        ),
      )
    );
  }
}
