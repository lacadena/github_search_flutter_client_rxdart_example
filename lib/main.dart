import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/models/menu_model.dart';
import 'package:provider/provider.dart';

import 'views/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MenuModel(),
      child: MaterialApp(
        title: 'GitHub Search Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          primaryColor: Colors.indigo,
          accentColor: Colors.grey.withOpacity(0.5),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}
