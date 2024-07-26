// ignore_for_file: prefer_const_constructors

import 'package:dawra/models/trip.dart';
import 'package:dawra/widgets/trip_item.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  //const FavoritesScreen({super.key});

  final List<Trip> favoriteTrips;

  FavoritesScreen(this.favoriteTrips);


  @override
  Widget build(BuildContext context) {
    if(favoriteTrips.isEmpty){

    
    return Center(

      child: Text('you have no favorite trips!'),
    
    );
    } else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id:       favoriteTrips[index].id,
            title:    favoriteTrips[index].title,
            imageUrl: favoriteTrips[index].imageUrl,
            duration: favoriteTrips[index].duration,
            tripType:  favoriteTrips[index].tripType,
            season :    favoriteTrips[index].season,
            //removeItem: _removeTrip,
          );
        },
        itemCount: favoriteTrips.length,
      );
    }
  }
}