import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/app/github_search_delegate_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/models/github_repository.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_api_wrapper.dart';
import 'package:github_search_flutter_client_rxdart_example/services/github_search_service_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class RepositoryPage extends StatefulWidget {
  @override
  _RepositoryPageState createState() => _RepositoryPageState();
}

class _RepositoryPageState extends State<RepositoryPage> {

  GitHubRepository repository;

  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search Repository'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () => _showSearch(context)),
        ],
      ),
      body: (repository == null) 
      ? Center(
        child: Text('Repository no selected'),
      )
      : SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: <Widget>[
            _crearImagen(),
            SizedBox(height: 25.0),
            _crearTitulo(),
            SizedBox(height: 25.0),
            _crearBoton(),
            SizedBox(height: 25.0),
            _crearTexto(repository.description),
            SizedBox(height: 110.0),
          ],
        ),
      )
    );
  }

  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      height: 300.0,
      child: Image(
        image: NetworkImage(repository.owner['avatar_url']),
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _crearTitulo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(repository.name, style: estiloTitulo, overflow: TextOverflow.ellipsis, maxLines: 2,),
                SizedBox(height: 7.0,),
                Text(repository.owner['login'], style: estiloSubTitulo,)
              ],
            ),
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.github, size: 40.0, color: Colors.black,), 
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () async {
              if (await canLaunch(repository.htmlUrl)) {
                await launch(repository.htmlUrl);
              } else {
                throw 'Could not launch $repository.htmlUrl';
              }
            }
          )
        ],
      ),
    );
  }

  Widget _crearBoton(){
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _crearIcono(FontAwesomeIcons.solidEye, '${repository.watch}'),
          _crearIcono(FontAwesomeIcons.star, '${repository.stars}'),
          _crearIcono(FontAwesomeIcons.codeBranch, '${repository.forks}'),
        ],
      ),
    );
  }

  Widget _crearIcono(IconData icono, String texto){
    return Column(
      children: <Widget>[
        FaIcon(
          icono,
          color: Theme.of(context).primaryColor,
          size: 25.0,
        ),
        SizedBox(height: 4.0),
        Text(
          texto, 
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 12.0),
        )
      ],
    );
    }

  Widget _crearTexto(String text){
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Text(
        (text == null) ? 'Description: Without Description' : 'Description: $text',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 15),
        overflow: TextOverflow.ellipsis,
        maxLines: 4,
      ),
    );
  }

  void _showSearch(BuildContext context) async {

    final searchService = GitHubSearchServiceRepository(apiRepository: GitHubSearchAPIWrapper());
    repository = await showSearch<GitHubRepository>(
      context: context,
      delegate: GitHubSearchDelegateRepository(searchService),
    );
    searchService.dispose();
    setState(() {});

  }

}