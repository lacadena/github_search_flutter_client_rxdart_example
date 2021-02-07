import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/app/github_search_delegate_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_api_wrapper_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service_repository.dart';

import '../app/github_search_delegate.dart';
import '../models/github_user.dart';
import '../services/github_search_api_wrapper.dart';
import '../services/github_search_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool activar = false;

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

  void _showSearchRepositories(BuildContext context) async {
    final searchService =
        GitHubSearchServiceRepository(apiWrapperRepository: GitHubSearchAPIWrapperRepository());
    final repository = await showSearch<GitHubRepository>(
      context: context,
      delegate: GitHubSearchDelegateRepository(searchService),
    );
    searchService.dispose();
    print(repository);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search'),
      ),
      body: Stack(
        children: [
          /*Center(
            child: RaisedButton(
              color: Theme.of(context).primaryColor,
              child: Text('Search Users',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.white)),
              onPressed: () => _showSearch(context),
            ),
          ),*/
          (activar)
          ? ZoomIn(
            duration: Duration(milliseconds: 250),
            child: Container(
              margin: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 200, right: 20),
                    title: Text(
                      'Users', style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white)
                    ),
                    trailing: FaIcon(FontAwesomeIcons.user, color: Colors.white),
                    onTap: () {
                      _showSearch(context);
                      setState(() => activar = false);
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 200, right: 20),
                    title: Text('Repository', style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white)
                    ),
                    trailing: FaIcon(FontAwesomeIcons.sitemap, color: Colors.white),
                    onTap: (){
                      _showSearchRepositories(context);
                      setState(() => activar = false);
                    },
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 200, right: 20),
                    title: Text('Code', style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white)
                    ),
                    trailing: FaIcon(FontAwesomeIcons.code, color: Colors.white),
                    onTap: (){print('Code');},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.only(left: 200, right: 20),
                    title: Text('Issues', style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(color: Colors.white)
                    ),
                    trailing: FaIcon(FontAwesomeIcons.exclamationCircle, color: Colors.white),
                    onTap: (){print('Issues');},
                  ),
                  SizedBox(height: 80,),
                ],
              ),
            ),
          )
          : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:(!activar) ? Theme.of(context).primaryColor : Colors.white,
        child: FaIcon(
          (!activar) ? FontAwesomeIcons.search : FontAwesomeIcons.times,
          color: (!activar) ? Colors.white : Theme.of(context).primaryColor,
        ),
        onPressed: (){
          setState((){
            if(!activar){
              activar = true;
            }else {
              activar = false;
            }
          });
        },
      ),
    );
  }
}
