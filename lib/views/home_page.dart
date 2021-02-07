import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/models/menu_model.dart';
import 'package:github_search_flutter_client_rxdart_example/views/code_page.dart';
import 'package:github_search_flutter_client_rxdart_example/views/repository_page.dart';
import 'package:github_search_flutter_client_rxdart_example/views/topic_page.dart';
import 'package:github_search_flutter_client_rxdart_example/views/user_page.dart';
import 'package:github_search_flutter_client_rxdart_example/widgets/menu.dart';
import 'package:provider/provider.dart';
class HomePage extends StatelessWidget {

  final List pages = [
    UserPage(),
    RepositoryPage(),
    TopicPage(),
    CodePage()
  ];

  @override
  Widget build(BuildContext context) {

    final currenIndex = Provider.of<MenuModel>(context).itemSeleccionado;

    return Scaffold(
      body: Stack(
        children: [
          pages[currenIndex],
          _PinteresMenuLocation()
        ],
      )
    );
  }
}

class _PinteresMenuLocation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    double sizeWidth = MediaQuery.of(context).size.width;

    return Positioned(
      bottom: 30,
      child: Container(
        width: sizeWidth,
        child: Row(
          children: [
            Spacer(),
            Menu(
              backgroudColor: Theme.of(context).primaryColor,
              activeColor: Colors.white,
              items: [
                Button(icon: Icons.person_rounded, text:'User', onPressed: () {}),
                Button(icon: Icons.collections_bookmark, text: 'Repository', onPressed: (){}),
                Button(icon: Icons.topic, text: 'topics', onPressed: (){}),
                Button(icon: Icons.code, text: 'code', onPressed: (){}),
              ],
            ),
            Spacer(),
          ],
        )
      )
    );
  }
}

// void _showSearch(BuildContext context) async {

//     final searchService = GitHubSearchService(apiWrapper: GitHubSearchAPIWrapper());
//     final user = await showSearch<GitHubUser>(
//       context: context,
//       delegate: GitHubSearchDelegate(searchService),
//     );
//     searchService.dispose();
//     print(user);

//   }
