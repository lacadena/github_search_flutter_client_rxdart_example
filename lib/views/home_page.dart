import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/widgets/home_grid_card.dart';

import '../app/github_search_delegate.dart';
import '../models/github_user.dart';
import '../services/github_search_api_wrapper.dart';
import '../services/github_search_service.dart';

class HomePage extends StatelessWidget {
  void _showSearch(BuildContext context) async {
    final searchService =
        GitHubSearchService(apiWrapper: GitHubSearchAPIWrapper());
    final user = await showSearch<GitHubUser>(
      context: context,
      delegate: GitHubSearchDelegate(searchService),
    );
    searchService.dispose();
    print(user);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0)
                ),
                color: Colors.indigo.shade700
              ),
              width: double.infinity,
            ),

            Container(
              margin: EdgeInsets.only(left: 90.0, bottom: 20.0),
              width: 299,
              height: 279,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(160.0),
                  bottomLeft: Radius.circular(290.0),
                  bottomRight: Radius.circular(160.0),
                  topRight: Radius.circular(10.0)
                ),
                color: Colors.indigo.shade400
              ),
            ),

            CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: EdgeInsets.all(15.0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10.0,
                    crossAxisSpacing: 15.0,
                    children: [
                      HomeGridCard(
                        icon: Icons.person_search_outlined,
                        title: 'Users',
                        function: () =>_showSearch(context),
                      ),

                      HomeGridCard(
                        icon: Icons.article_rounded,
                        title: 'Repositories',
                        function: () => _showSearch(context),
                      ),

                      HomeGridCard(
                        icon: Icons.topic,
                        title: 'Topics',
                        function: () => _showSearch(context),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ) 
      )
    );
  }
}
