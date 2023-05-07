//paquetes Flutter
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import "package:flutter/cupertino.dart";
//paquetes locales
import 'package:whatsargazo/screens/screens.dart';
import 'package:whatsargazo/utils/app_styles.dart';

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
    const Text("Chatbot"),
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
    return WillPopScope(
      onWillPop: () async {
        // Mostrar un diálogo de confirmación antes de salir de la pantalla
        showDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: Text('¿Salir de la pantalla?'),
            content: Text('¿Estás seguro de que deseas salir?'),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('Cancelar'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Salir', style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        );

        // Retornar falso para evitar que se cierre la pantalla inmediatamente
        return false;
      },
      child: Scaffold(
        body: _WidgetOptions [_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Styles.bgColor,
          currentIndex: _selectedIndex,
          onTap: onItemTap,
          elevation: 10,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: const Color(0xFF526480),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), 
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "search"), 
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_chat_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_chat_filled),
              label: "chatbot"),
            BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "perm"),
          ],
        ),
    
      ),
    );
  }
}