import 'package:flutter/material.dart';

class TopicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search Topic'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('Topic no selected'),
      ),
    );
  }
}