// ignore_for_file: prefer_const_constructors

import '../screens/filters_screen.dart';
import 'package:flutter/material.dart';



class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  
  ListTile buildListTile(String title, IconData icon, VoidCallback onTapLink) {
    return ListTile(
          leading: Icon(
          icon,
          size: 30,
          color: Colors.blue,
          ),
          title: Text(title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            ),
          ),
          onTap: onTapLink,
            );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      surfaceTintColor: Colors.white,
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: const EdgeInsets.only(top:40),
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text('Your Tourist Guide',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20,),
          buildListTile(
          'travels',
          Icons.card_travel,
          (){
            Navigator.of(context).pushReplacementNamed('/');
            }
          ),
          buildListTile(
          'filter',
          Icons.filter_list,
          (){
            Navigator.of(context).pushReplacementNamed(FiltersScreen.screenRoute);
            },
          ),
        ],
      ),
    );
  }
}