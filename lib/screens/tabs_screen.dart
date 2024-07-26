// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:dawra/models/trip.dart';
import 'package:dawra/screens/categories_screen.dart';
import 'package:dawra/screens/favorites_screen.dart';
import '../widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({super.key});

  final List<Trip> _favoriteTrips;
  TabsScreen(this._favoriteTrips );

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index){
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  late List<Map<String,Object>> _screens ;

  @override
  void initState(){
    _screens = [
    {
      'page': CategoriesScreen(),
      'title': 'Trip Categories',
    },

    {
      'page': FavoritesScreen(widget._favoriteTrips),
      'title': 'Favorites',
    },
    ];
  super.initState();

  }



  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.blue,
      title: Text(_screens[_selectedScreenIndex]['title'] as String,
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      ),
      iconTheme: IconThemeData(
          color: Colors.white, // Change the color of the hamburger icon to white
        ),
    ),
    drawer: AppDrawer(),
    body: _screens[_selectedScreenIndex]['page'] as Widget?,
    bottomNavigationBar: BottomNavigationBar(
      onTap: _selectScreen,
      currentIndex: _selectedScreenIndex,
      backgroundColor: Colors.blue,
      selectedItemColor: Color.fromARGB(255, 221, 181, 4), // Yellow color for selected item
      unselectedItemColor: Colors.white, // White color for unselected items
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
      ],
    ),
  );
}


}



