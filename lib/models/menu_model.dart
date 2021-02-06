import 'package:flutter/material.dart';

class MenuModel with ChangeNotifier{

  int _itemSeleccionado = 0;

  Color _backgroudColor = Colors.white;
  Color _activeColor     = Colors.black;
  Color _inactiveColor   = Colors.blueGrey;

  int get itemSeleccionado => this._itemSeleccionado;

  Color get backgroudColor => this._backgroudColor;
  Color get activeColor => this._activeColor;
  Color get inactiveColor => this._inactiveColor;

  set itemSeleccionado (int index){
    this._itemSeleccionado = index;
    notifyListeners();
  }

  set backgroudColor (Color color){
    this._backgroudColor = color;
  }

  set activeColor (Color color){
    this._activeColor = color;
  }

  set inactiveColor (Color color){
    this._inactiveColor = color;
  }

}