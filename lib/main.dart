import 'dart:async';
import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/app/context/settings/app_settings.dart';
import 'package:github_search_flutter_client_rxdart_example/app/context/settings/application.dart';

import 'app/context/gitHub_search.dart';
void main() {

  Application().appSettings = AppSettings();
   
  runZoned<Future<void>>(()async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(GitHubSearch());
  },
  );
}
