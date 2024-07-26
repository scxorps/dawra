// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_final_fields, unused_element

import 'package:dawra/screens/category_trips_screen.dart';
import 'package:dawra/widgets/app_data.dart';
import './screens/filters_screen.dart';
import './screens/tabs_screen.dart';
import './screens/trip_details_screen.dart';
import 'package:flutter/material.dart';
import './models/trip.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'family': false,
    'summer': false,
    'winter': false,
  };

  List<Trip> _availableTrips = Trips_data;
  List<Trip> _favoriteTrips = [];

  void _changeFilters(Map<String, bool> filterData) {
  setState(() {
    _filters = filterData;

    _availableTrips = Trips_data.where((trip) {
      if (_filters['summer'] == true && !trip.isInSummer) {
        return false;
      }
      if (_filters['winter'] == true && !trip.isInWinter) {
        return false;
      }
      if (_filters['family'] == true && !trip.isForFamilies) {
        return false;
      }
      return true;
    }).toList();
  });
}


  void _manageFavorite(String tripId) {
    final existingIndex = _favoriteTrips.indexWhere((trip) => trip.id == tripId);

    if (existingIndex >= 0) {
      setState(() {
        _favoriteTrips.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteTrips.add(Trips_data.firstWhere((trip) => trip.id == tripId));
      });
    }
  }

  bool _isFavorite(String id) {
    return _favoriteTrips.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'dawra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(_favoriteTrips),
        CategoryTripsScreen.screenRoute: (ctx) => CategoryTripsScreen(_availableTrips),
        TripDetailsScreen.screenRoute: (ctx) => TripDetailsScreen(_manageFavorite, _isFavorite),
        FiltersScreen.screenRoute: (ctx) => FiltersScreen(_filters, _changeFilters),
      },
    );
  }
}
