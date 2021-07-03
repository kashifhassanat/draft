
import 'package:flutter/material.dart';
import 'package:plant_disease_detection/app/screens/grapes.dart';
import 'package:plant_disease_detection/app/screens/homescreen.dart';
import 'package:plant_disease_detection/app/screens/profile.dart';
import 'package:plant_disease_detection/app/services/auth.dart';

import 'apple.dart';



class MainPage extends StatefulWidget {
 final AuthBase auth;
  final String title;

  const MainPage({Key key, this.auth, this.title}) : super(key: key);
 
  @override
  _MainPageState createState() => _MainPageState();
}


class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

final List<Widget> _widgetOptions = [
    AppleScreen(auth: Auth(),),
    GrapesScreen(auth: Auth(),),
    Profile(auth: Auth())
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon( AssetImage("images/apple.png") ,size: 30,color: Colors.red,  ),
            title: Text("Apple"),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
             icon: ImageIcon( AssetImage("images/grapes.png"),size: 30, color: Colors.purple   ),
          title: Text("Grapes"),
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
               icon: ImageIcon( AssetImage("images/farm.png"),size: 30, color: Colors.amberAccent),
            title: Text("Profile"),
      
            backgroundColor: Colors.white
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
