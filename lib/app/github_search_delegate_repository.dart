import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_search_result_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service_repository.dart';

class GitHubSearchDelegateRepository extends SearchDelegate<GitHubRepository> {
  GitHubSearchDelegateRepository(this.searchServiceRepository);
  final GitHubSearchServiceRepository searchServiceRepository;

  @override
  Widget buildLeading(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        color: theme.primaryColor,
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
    searchServiceRepository.searchRepository(query);
    return buildMatchingSuggestions(context);
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    }
    // always search if submitted
    searchServiceRepository.searchRepository(query);
    return buildMatchingSuggestions(context);
  }

  Widget buildMatchingSuggestions(BuildContext context) {
    final Map<GitHubAPIErrorRepository, String> errorMessages = {
      GitHubAPIErrorRepository.parseError: 'Error reading data from the API',
      GitHubAPIErrorRepository.rateLimitExceeded: 'Rate limit exceeded',
      GitHubAPIErrorRepository.unknownError: 'Unknown error',
    };
    // then return results
    return StreamBuilder<GitHubSearchResultRepository>(
      stream: searchServiceRepository.results,
      builder: (context, AsyncSnapshot<GitHubSearchResultRepository> snapshot) {
        if (snapshot.hasData) {
          final GitHubSearchResultRepository result = snapshot.data;
          return result.when(
            (repositories) => ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: repositories.length,
              itemBuilder: (context, index) {
                return GitHubRepositorySearchResultTile(
                  repository: repositories[index],
                  onSelected: (value) => close(context, value),
                );
              },
            ),
            error: (error) => SearchPlaceholder(title: errorMessages[error]),
          );
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return query.isEmpty
        ? []
        : <Widget>[
            IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              color: theme.primaryColor,
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            )
          ];
  }
}

class GitHubRepositorySearchResultTile extends StatelessWidget {
  const GitHubRepositorySearchResultTile(
      {@required this.repository, @required this.onSelected});

  final GitHubRepository repository;
  final ValueChanged<GitHubRepository> onSelected;

  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      onTap: () => onSelected(repository),
      child: _Tarjeta(repository: repository)
    );
  }
}

class _Tarjeta extends StatelessWidget {
  const _Tarjeta({
    @required this.repository,
  });

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height * 0.2,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: theme.primaryColor,
            offset: Offset(0, 1),
            blurRadius: 5
          )
        ]
      ),
      child: Row(
        children: [
          _Avatar(repository: repository),
          _Caracteristicas(theme: theme, repository: repository),
        ],
      ),
    );
  }
}

class _Caracteristicas extends StatelessWidget {
  const _Caracteristicas({
    @required this.theme,
    @required this.repository, 
  });

  final GitHubRepository repository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Flexible(
      child: Container(
        width: size.width * 0.7,
        color: Colors.white,
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _RepositoryName(theme: theme, repository: repository),
            Divider(thickness: 1, color: Colors.indigo,),
            _RepositoryDescription(theme: theme, repository: repository),
            SizedBox(height: 5),
            _RepositoryLanguage(theme: theme, repository: repository),
            Divider(thickness: 1, color: Colors.indigo,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _RepositoryForks(theme: theme, repository: repository),
                _RepositoryStars(theme: theme, repository: repository),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RepositoryStars extends StatelessWidget {
  const _RepositoryStars({
    @required this.theme,
    @required this.repository, 
  });

  final GitHubRepository repository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.25,
      child: Row(
        children: [
          FaIcon(FontAwesomeIcons.star, size: 18, color: theme.primaryColor),
          Container(
            width: size.width * 0.19,
            child: Text(
              ' Star : ${repository.stargazersCount}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

class _RepositoryForks extends StatelessWidget {
  const _RepositoryForks({
    @required this.theme,
    @required this.repository, 
  });

  final GitHubRepository repository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    
    return Container(
      width: size.width * 0.25,
      child: Row(
        children: [
          FaIcon(FontAwesomeIcons.codeBranch, size: 18, color: theme.primaryColor),
          Container(
            width: size.width * 0.21,
            child: Text(
              ' Fork : ${repository.forks}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

class _RepositoryLanguage extends StatelessWidget {
  const _RepositoryLanguage({
    @required this.theme,
    @required this.repository, 
  });

  final GitHubRepository repository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: size.width * 0.18,
            child: Text(
              'Language: ',
              style: TextStyle(color: theme.primaryColor),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            width: size.width * 0.4,
            child: Text(
              (repository.language == null) ? 'No language' : '${repository.language}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

class _RepositoryDescription extends StatelessWidget {
  const _RepositoryDescription({
    @required this.theme,
    @required this.repository, 
  });

  final GitHubRepository repository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        (repository.description == null) ? 'Description: Without description' : 'Description: ${repository.description}',
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.justify,
      ),
    );
  }
}

class _RepositoryName extends StatelessWidget {
  const _RepositoryName({
    @required this.theme,
    @required this.repository, 
  });

  final GitHubRepository repository;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            width: size.width * 0.19,
            child: Text(
              'Repository: ',
              style: TextStyle(color: theme.primaryColor),
              textAlign: TextAlign.start,
            ),
          ),
          Container(
            width: size.width * 0.39,
            child: Text(
              ' ${repository.name}',
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({
    @required this.repository,
  });

  final GitHubRepository repository;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(left: 5),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image(
          width: size.width * 0.3,
          height: size.height * 0.15,
          image: NetworkImage(repository.owner['avatar_url']),
          fit: BoxFit.fill,
        ),
      ),
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
