//paquetes Flutter
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "package:flutter/cupertino.dart";
//paquetes locales
import 'package:whatsargazo/screens/screens.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex= 0;

  //lista de paginas posibles del bar
  static final List <Widget> _WidgetOptions = <Widget> [
    HomeScreen(),
    const Text("Search"),
    const Text("Person")
  ];

  //metodo para cambiar de pagina al dar clic
  void onItemTap(int index){
    setState(() {     //actualizamos estado
      _selectedIndex = index;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _WidgetOptions [_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onItemTap,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
            activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
            label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: "search"),
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
            label: "perm"),
        ],
      ),

    );
  }
}