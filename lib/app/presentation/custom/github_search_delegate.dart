import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/app/blocs/search_bloc.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_user.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/result.dart';

class GitHubSearchDelegate extends SearchDelegate<dynamic> {
  GitHubSearchDelegate({this.searchBloc, this.searchType});
  final GitHubSearchBloc searchBloc;
  final String searchType;

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

      switch (this.searchType) {
        case 'users':
            return Center(
        child: Text(
          'Type the username you want to search.',
          style: TextStyle(fontSize: 18.0),
        ),
      );
          break;
        case 'repositories':
            return Center(
        child: Text(
          'Type the repository you want to search.',
          style: TextStyle(fontSize: 18.0),
        ),
      );
          break;
        default:
        return Container();
      }
      
    }
    // search-as-you-type if enabled
    searchBloc.search(query);

    return buildMatchingSuggestions(context, query);
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // always search if submitted
    searchBloc.search(query);

    return buildMatchingSuggestions(context, query);
  }

  Widget buildMatchingSuggestions(BuildContext context, String query) {
    final Map<GitHubAPIError, String> errorMessages = {
      GitHubAPIError.parseError: 'No results found for',
      GitHubAPIError.rateLimitExceeded: 'Rate limit exceeded',
      GitHubAPIError.unknownError: 'Unknown error',
    };
    // then return results
    return StreamBuilder<Result<GitHubSearchResult>>(
      stream: (this.searchType == 'users')
          ? searchBloc.results
          : searchBloc.resultsRepo,
      builder: (context, AsyncSnapshot<Result<GitHubSearchResult>> snapshot) {
        if (snapshot.hasData) {
          if(snapshot.data.error != null){
              return SearchPlaceholder(
                message:snapshot.data.error.message, error: null, query: snapshot.data.error.message);
          }else{
             final GitHubSearchResult result = snapshot.data.data;
          print(snapshot.data);

          print(result);
          return result.when(
            (items) => ListView.builder(
              itemCount: items.length,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              itemBuilder: (context, index) {
                print(items[index].runtimeType);
                if (this.searchType == 'users') {
                  return GitHubUserSearchResultTile(
                    user: items[index],
                    onSelected: (value) => close(context, value),
                  );
                } else {
                  return GitHubRepositorySearchResultTile(
                    repo: items[index],
                    onSelected: (value) => close(context, value),
                  );
                }
              },
            ),
            error: (error) => SearchPlaceholder(
                message: errorMessages[error], error: error, query: query),
            gitHubError: (error) => SearchPlaceholder(
                message: errorMessages[error], error: error, query: query),
          );
          }
         
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
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

class GitHubUserSearchResultTile extends StatelessWidget {
  const GitHubUserSearchResultTile(
      {@required this.user, @required this.onSelected});

  final GitHubUser user;
  final ValueChanged<GitHubUser> onSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context)
        .copyWith(scaffoldBackgroundColor: Color.fromRGBO(36, 41, 46, 1));
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: TextButton(
        onPressed: () => onSelected(user),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ClipPath(
              clipper: ShapeBorderClipper(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
              ),
              child: Container(
                child: Image.network(
                  user.avatarUrl,
                  width: 60.0,
                ),
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      user.login,
                      minFontSize: 10.0,
                      maxLines: 1,
                      style: theme.textTheme.headline5,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Score: ' + user.score.toString(),
                      style: theme.textTheme.bodyText1
                          .copyWith(color: Colors.amber, fontSize: 15.0),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GitHubRepositorySearchResultTile extends StatelessWidget {
  const GitHubRepositorySearchResultTile(
      {@required this.repo, @required this.onSelected});

  final GitHubRepository repo;
  final ValueChanged<GitHubRepository> onSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context)
        .copyWith(scaffoldBackgroundColor: Color.fromRGBO(36, 41, 46, 1));
    return Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: TextButton(
        onPressed: () => onSelected(repo),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: FaIcon(
                FontAwesomeIcons.server,
                color: Colors.yellow[700],
                size: 50.0,
              ),
            ),
            Flexible(
              child: Container(
                padding: EdgeInsets.only(left: 20.0),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      repo.name,
                      minFontSize: 10.0,
                      maxLines: 1,
                      style: theme.textTheme.headline6.copyWith(color: Colors.black,fontWeight: FontWeight.bold),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    AutoSizeText(
                      'Full name: ' + repo.name,
                      minFontSize: 10.0,
                      maxLines: 1,
                      style: theme.textTheme.bodyText2.copyWith(color: Colors.black),
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          'Score: ' + repo.score.toString(),
                          minFontSize: 14.0,
                          maxLines: 2,
                          style: theme.textTheme.bodyText2
                              .copyWith(color: Colors.black, fontSize: 15.0),
                          textAlign: TextAlign.start,
                        ),
                        AutoSizeText(
                          'Open issues: ' + repo.openIssuesCount.toString(),
                          style: theme.textTheme.bodyText2
                              .copyWith(color: Colors.black, fontSize: 15.0),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                    AutoSizeText(
                          'Owner: ' + repo.owner.login,
                          maxLines: 2,
                          minFontSize: 12.0,
                          style: theme.textTheme.bodyText2
                              .copyWith(color: Colors.black, fontSize: 15.0),
                          textAlign: TextAlign.start,
                        ),
                        
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AutoSizeText(
                          'Private: ' + repo.private.toString(),
                          style: theme.textTheme.bodyText2
                              .copyWith(color: Colors.black, fontSize: 15.0),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                      'Size: ' + repo.size.toString(),
                      style: theme.textTheme.bodyText2
                          .copyWith(color: Colors.black, fontSize: 15.0),
                      textAlign: TextAlign.start,
                    ),
                        
                      ],
                    ),
                    
                    AutoSizeText(
                      'Url: ' + repo.url.toString(),
                      minFontSize: 13.0,
                      maxLines: 2,
                      style: theme.textTheme.bodyText2
                          .copyWith(color: Colors.black, fontSize: 15.0),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchPlaceholder extends StatelessWidget {
  const SearchPlaceholder(
      {@required this.message, @required this.query, @required this.error});
  final String message;
  final String query;
  final GitHubAPIError error;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context)
        .copyWith(scaffoldBackgroundColor: Color.fromRGBO(36, 41, 46, 1));
    String text = message;
    if(error!= null){
      if (error.index == 1) text += " '" + query + "'";
    }
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error,
            size: 100.0,
            color: Colors.white60,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            text,
            style: theme.textTheme.headline6,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
