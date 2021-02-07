import 'dart:ui';

import 'package:flutter/material.dart';

import '../app/github_search_delegate.dart';
import '../models/github_user.dart';
import '../services/github_search_api_wrapper.dart';
import '../services/github_search_service.dart';

class UserPage extends StatefulWidget {

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {

  GitHubUser user;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search User'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () => _showSearch(context)),
        ],
      ),
      body: (user == null) 
      ? Center(
        child: Text('User no selected'),
      )
      : Container(
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image(
                width: size.width,
                height: size.height * 0.35,
                fit: BoxFit.cover,
                image: NetworkImage(user.avatarUrl),
              ),
            ),
            // SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(user.login, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,)),
                IconButton(icon: Icon(Icons.clear), onPressed: (){
                  setState(() {
                    user = null;
                  });
                })
              ],
            )
          ],
        )
      )
    );
  }

  void _showSearch(BuildContext context) async {

    final searchService = GitHubSearchService(apiWrapper: GitHubSearchAPIWrapper());
    user = await showSearch<GitHubUser>(
      context: context,
      delegate: GitHubSearchDelegate(searchService),
    );
    searchService.dispose();
    print(user);
    setState(() {});

  }
}