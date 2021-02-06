import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';

class GitHubRepositorySearchResultTile extends StatelessWidget {
  const GitHubRepositorySearchResultTile(
      {@required this.repo, @required this.onSelected});

  final GitHubRepository repo;
  final ValueChanged<GitHubRepository> onSelected;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return InkWell(
      onTap: () => onSelected(repo),
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ClipPath(
                  clipper: ShapeBorderClipper(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  child: Text(
                    '${repo.displayName??repo.name}',
                    style: theme.textTheme.headline5,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 8.0),
                Expanded(
                  child: Text(
                    '${repo.shortDescription??repo.description}',
                    style: theme.textTheme.subtitle1,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
          RatingBarIndicator(
            rating: repo.score,
            itemBuilder: (context, index) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 15.0,
            direction: Axis.horizontal,
          )
        ],
      ),
    );
  }
}