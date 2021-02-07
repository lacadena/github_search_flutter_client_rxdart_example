import 'package:flutter/material.dart';
import 'package:github_search_flutter_client_rxdart_example/models/menu_model.dart';
import 'package:provider/provider.dart';
// import 'package:provider/provider.dart';

class Button{
  final IconData icon;
  final String text;
  final Function onPressed;

  Button({
    @required this.onPressed, 
    @required this.icon,
    @required this.text
  });
}

class Menu extends StatelessWidget {

  final Color backgroudColor;
  final Color activeColor;
  final Color inactiveColor;
  final List<Button> items;

  Menu({
    this.backgroudColor = Colors.white, 
    this.activeColor = Colors.black, 
    this.inactiveColor = Colors.blueGrey,
    @required this.items,
  });

  @override
  Widget build(BuildContext context) {
  
    return Builder(
      builder: (context) {

        Provider.of<MenuModel>(context).backgroudColor = this.backgroudColor;
        Provider.of<MenuModel>(context).activeColor = this.activeColor;
        Provider.of<MenuModel>(context).inactiveColor = this.inactiveColor;

        return _MenuBackground(
          child: _MenuItems(items)
        );
      }
    );
  }
}

class _MenuBackground extends StatelessWidget {

  final Widget child;

  _MenuBackground({@required this.child});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final backgroudColor = Provider.of<MenuModel>(context).backgroudColor;

    return Container(
      child: child,
      width: size.width*0.65,
      height: size.height * 0.08,
      decoration: BoxDecoration(
        color: backgroudColor,
        borderRadius: BorderRadius.all(Radius.circular(100)),
        boxShadow: <BoxShadow> [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            spreadRadius: -5
          )
        ]
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {
  
  final List<Button> menuItems;

  _MenuItems(this.menuItems);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length, (index) => _MenuButton(index, menuItems[index])),
    );
  }
}

class _MenuButton extends StatelessWidget {
  
  final int index;
  final Button item;

  const _MenuButton(this.index, this.item);

  @override
  Widget build(BuildContext context) {

    final itemSeleccionado = Provider.of<MenuModel>(context).itemSeleccionado;

    final menuModel = Provider.of<MenuModel>(context);

    final color = (itemSeleccionado == index) ? menuModel.activeColor : menuModel.inactiveColor;

    return GestureDetector(
      onTap: (){
        Provider.of<MenuModel>(context, listen: false).itemSeleccionado = index;
        item.onPressed();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              item.icon,
              size: (itemSeleccionado == index) ? 27 : 22,
              color: color,
            ),
            Text(item.text, style: TextStyle(color: color, fontSize: (itemSeleccionado == index) ? 13 : 10),)
          ],
        ),
      ),
    );
  }
}