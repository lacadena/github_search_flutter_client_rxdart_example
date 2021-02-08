import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
Widget buildAppBar(String appBarTitle, List<Widget> appBarActions){
  return AppBar(
      elevation: 2.0,
      backgroundColor: Color.fromRGBO(36,41,46,1),
      leading: Center(child: FaIcon(FontAwesomeIcons.github,color: Colors.white,size: 40.0,),),
      actions:appBarActions,
      centerTitle: false,
      title: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.all(0.0),
        child: Text(
          appBarTitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0
          ),
        ),
      ),
    );
}
