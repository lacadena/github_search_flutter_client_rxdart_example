import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:github_search_flutter_client_rxdart_example/app/blocs/homePage_bloc.dart';
import 'package:github_search_flutter_client_rxdart_example/app/presentation/custom/static_widgets.dart';
import 'package:github_search_flutter_client_rxdart_example/core/domain/entities/dto/homeAction.dto.dart';
import 'package:github_search_flutter_client_rxdart_example/core/injectors/injector.dart';

import '../base_state.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage, HomePageBloc> {
  @override
  HomePageBloc getBlocInstance() {
    return HomePageBloc(Injector().provideHomeActionsUseCase());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromRGBO(36,41,46,1),
      appBar: buildAppBar(l10n.homeHeaderTitle, []),
      body: Center(
        child: buildHomeActions(),
      ),
    );
  }

  Widget buildHomeActions() {
    return FutureBuilder<List<HomeActionDto>>(
      future: bloc.getHomeActions(),
      builder:
          (BuildContext context, AsyncSnapshot<List<HomeActionDto>> snapshot) {
        if (snapshot.hasData) {
          return StaggeredGridView.countBuilder(
            padding: EdgeInsets.all(10.0),
            crossAxisCount: 4,
            itemCount: snapshot.data.length,
            itemBuilder: (BuildContext context, int index) => buildActionCard(snapshot.data[index]),
            staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2,2),
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
          );
        } else {
          return Center(
            child: CircularProgressIndicator(backgroundColor: Colors.white,),
          );
        }
      },
    );
  }

  Widget buildActionCard(HomeActionDto action){

    return TextButton(
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              action.icon,
              size: 100.0,
              color: Colors.black,
            ),
            SizedBox(height: 10.0,),
            Text(
              action.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
            )
            
          ],
        ),
      ),
      onPressed: (){
        action.action(context);
      },
    );

  }
}
