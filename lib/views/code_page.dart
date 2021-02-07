import 'package:flutter/material.dart';

class CodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GitHub Search Code'),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      body: Center(
        child: Text('Code no selected'),
      ),
    );
  }
}