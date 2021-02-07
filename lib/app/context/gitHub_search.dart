import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:github_search_flutter_client_rxdart_example/app/context/settings/app_localizatoins.dart';
import 'package:github_search_flutter_client_rxdart_example/app/context/settings/app_settings.dart';
import 'package:github_search_flutter_client_rxdart_example/app/context/settings/application.dart';
import 'package:github_search_flutter_client_rxdart_example/app/presentation/views/home_page.dart';


class GitHubSearch extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      localizationsDelegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale("en"),
        const Locale("es"),
      ],
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      // routes: To define multiple app pages,
      themeMode: ThemeMode.light,
      theme: ThemeData(
        cupertinoOverrideTheme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Color.fromRGBO(36,41,46,1)
        ),
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Color.fromRGBO(36,41,46,1),
        appBarTheme: AppBarTheme(
          backgroundColor: Color.fromRGBO(36,41,46,1),
          foregroundColor: Color.fromRGBO(36,41,46,1)
        ),
        fontFamily: 'Open Sans',
      ),
    );
  }
}