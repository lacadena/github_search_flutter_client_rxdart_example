import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_search_result.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/models/github_user.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service.dart';

class GitHubSearchDelegate extends SearchDelegate<GitHubUser> {
  GitHubSearchDelegate(this.searchService);
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
      return Center(
        child: Text('Type the username you want to search.',style: TextStyle(fontSize: 18.0),),
      );
    }
    // search-as-you-type if enabled
    searchService.searchUser(query);
    return buildMatchingSuggestions(context,query);
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // always search if submitted
    searchService.searchUser(query);
    return buildMatchingSuggestions(context,query);
  }

  Widget buildMatchingSuggestions(BuildContext context, String query) {
    final Map<GitHubAPIError, String> errorMessages = {
      GitHubAPIError.parseError: 'No results found for',
      GitHubAPIError.rateLimitExceeded: 'Rate limit exceeded',
      GitHubAPIError.unknownError: 'Unknown error',
    };
    // then return results
    return StreamBuilder<GitHubSearchResult>(
      stream: searchService.results,
      builder: (context, AsyncSnapshot<GitHubSearchResult> snapshot) {
        if (snapshot.hasData) {
          final GitHubSearchResult result = snapshot.data;
          return result.when(
            (users) => ListView.builder(
              itemCount: users.length,
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              itemBuilder: (context, index) {
                return GitHubUserSearchResultTile(
                  user: users[index],
                  onSelected: (value) => close(context, value),
                );
              },
            ),
            error: (error) => SearchPlaceholder(message: errorMessages[error],error: error,query: query),
          );
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
    final ThemeData theme = Theme.of(context).copyWith(scaffoldBackgroundColor:Color.fromRGBO(36,41,46,1));
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

class SearchPlaceholder extends StatelessWidget {
  const SearchPlaceholder({@required this.message,@required this.query,@required this.error});
  final String message;
  final String query;
  final GitHubAPIError error;
  @override
  Widget build(BuildContext context) {
    print(error.index);
    final ThemeData theme = Theme.of(context).copyWith(scaffoldBackgroundColor:Color.fromRGBO(36,41,46,1));
    String text = message;
    if(error.index == 1)text+=" '"+query+"'";
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error,size: 100.0, color: Colors.white60,),
          SizedBox(height: 10.0,),
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
