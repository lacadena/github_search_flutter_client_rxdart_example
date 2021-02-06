import 'package:flutter/material.dart';

class HomeGridCard extends StatelessWidget {

  final String title;
  final IconData icon;
  final Function function;

  HomeGridCard({
    @required this.title,
    @required this.icon,
    @required this.function
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.indigo,
                size: 45.0,
              ),

              SizedBox(
                height: 3.0,
              ),

              Padding(
                padding: EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: function,
    );
  }
}
