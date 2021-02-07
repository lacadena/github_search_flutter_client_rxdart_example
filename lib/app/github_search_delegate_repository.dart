import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service_repository.dart';

class GitHubSearchDelegateRepository extends SearchDelegate<GitHubRepository> {
  GitHubSearchDelegateRepository(this.searchService) : this.searchFieldLabel = 'Search repository';
  final GitHubSearchServiceRepository searchService;
  final String searchFieldLabel;

  @override
  TextStyle get searchFieldStyle => TextStyle(
    color: Colors.white.withOpacity(0.7),
    fontSize: 18.0,
  );

  @override
  ThemeData appBarTheme(BuildContext context) {
    return super.appBarTheme(context).copyWith(
      primaryColor: Color.fromRGBO(52, 54, 101, 1.0),
      textTheme: TextTheme(
        headline6: TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 18.0)
      )
    );
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
        color: Colors.white.withOpacity(0.7),
      ),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return _backgroudContainer(Container());
    }
    // search-as-you-type if enabled
    searchService.searchRepository(query);
    return buildMatchingSuggestions(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return _backgroudContainer(Container());
    }
    // always search if submitted
    searchService.searchRepository(query);
    return buildMatchingSuggestions(context);
  }

  Widget buildMatchingSuggestions(BuildContext context) {
    final Map<GitHubAPIErrorRepository, String> errorMessages = {
      GitHubAPIErrorRepository.parseError: 'Ups, no results for $query',
      GitHubAPIErrorRepository.rateLimitExceeded: 'Rate limit exceeded',
      GitHubAPIErrorRepository.unknownError: 'Unknown error',
    };
    // then return results
    return _backgroudContainer( StreamBuilder<GitHubSearchResultRepository>(
        stream: searchService.results,
        builder: (context, AsyncSnapshot<GitHubSearchResultRepository> snapshot) {
          if (snapshot.hasData) {
            final GitHubSearchResultRepository result = snapshot.data;
            return result.when(
              (repositories) => ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: repositories.length,
                itemBuilder: (BuildContext context, int index) {
                  return GitHubRepositoryCard(
                    repository: repositories[index], 
                    onSelected: (value) => close(context, value)
                  );
               },
              ),
              error: (error) => SearchPlaceholder(title: errorMessages[error]),
            );
          } else {
            return Center(child: CircularProgressIndicator(backgroundColor: Colors.grey.withOpacity(0.25),));
          }
        },
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
          color: Colors.white.withOpacity(0.7),
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
            showSuggestions(context);
          },
        )
      ];
  }
}

class GitHubRepositoryCard extends StatelessWidget {
  const GitHubRepositoryCard({
    @required this.repository, 
    @required this.onSelected
  });

  final GitHubRepository repository;
  final ValueChanged<GitHubRepository> onSelected;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () => onSelected(repository),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7.55),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.25),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _BuildImage(repository: repository),
                  _BuildDescriptionRepository(repository: repository),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildImage extends StatelessWidget {
  
  const _BuildImage({@required this.repository,});

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
          width: 100,
          height: 100,
          image: NetworkImage(repository.owner['avatar_url']),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

class _BuildDescriptionRepository extends StatelessWidget {
  
  const _BuildDescriptionRepository({@required this.repository,});

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {

    final style = TextStyle(color: Colors.white.withOpacity(0.7), fontSize: 15);

    return Flexible(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Repository: ${repository.name}', overflow: TextOverflow.ellipsis, style: style),
            Text('Author: ${repository.owner['login']}', style: style,),
            Text(
              (repository.description == null) 
                ? 'Description: Without Description' 
                : 'Description: ${repository.description}',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: style,
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _repositoryDeatils(FontAwesomeIcons.solidEye, '${repository.watch}'),
                _repositoryDeatils(FontAwesomeIcons.star, '${repository.stars}'),
                _repositoryDeatils(FontAwesomeIcons.codeBranch, '${repository.forks}'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _repositoryDeatils(IconData icon, String text) {

    final style = TextStyle(color: Colors.white, fontSize: 13);

    return Row(
      children: [
        FaIcon(icon, color: Colors.white, size: 16,),
        SizedBox(width: 5,),
        Text(text, style: style,),
      ],
    );
  }
}

class SearchPlaceholder extends StatelessWidget {
  const SearchPlaceholder({@required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Center(
      child: Text(
        title,
        style: theme.textTheme.headline5,
        textAlign: TextAlign.center,
      ),
    );
  }
}

Widget _backgroudContainer( Widget child) {

  return Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: FractionalOffset(0.0, 0.6),
        end: FractionalOffset(0.0, 1.0),
        colors: [
          Color.fromRGBO(52, 54, 101, 1.0),
          Color.fromRGBO(35, 37, 57, 1.0),
        ]
      )
    ),
    child: child,
  );

}
