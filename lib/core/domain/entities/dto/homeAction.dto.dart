import 'package:flutter/cupertino.dart';

class HomeActionDto {
    HomeActionDto({
        this.title,
        this.action,
        this.icon,
    });

    String title;
    Function action;
    IconData icon;
}
