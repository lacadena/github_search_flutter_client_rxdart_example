import 'package:flutter/material.dart';

class RepositoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search Repository'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('Repository no selected'),
      ),
    );
  }
}