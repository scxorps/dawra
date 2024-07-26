// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:dawra/models/trip.dart';
import 'package:dawra/screens/trip_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class TripItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Season season;
  final TripType tripType;
  //final Function removeItem;

  TripItem({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.season,
    required this.tripType,
    //required this.removeItem,
  });

  String get seasonText {
    switch (season) {
      case Season.Spring:
        return 'Spring';
      case Season.Summer:
        return 'Summer';
      case Season.Autumn:
        return 'Autumn';
      case Season.Winter:
        return 'Winter';
      default:
        return 'Unknown';
    }
  }

  Icon get seasonIcon {
    switch (season) {
      case Season.Spring:
        return Icon(WeatherIcons.raindrop, color: Colors.green);
      case Season.Summer:
        return Icon(WeatherIcons.day_sunny, color: Colors.orange);
      case Season.Autumn:
        return Icon(WeatherIcons.wind, color: Colors.brown);
      case Season.Winter:
        return Icon(WeatherIcons.snow, color: Colors.blue);
      default:
        return Icon(WeatherIcons.na);
    }
  }

  Icon get activityIcon {
    switch (tripType) {
      case TripType.adventure:
        return Icon(FontAwesomeIcons.personHiking, color: Colors.red);
      case TripType.culture:
        return Icon(FontAwesomeIcons.buildingColumns, color: Colors.blue);
      case TripType.relax:
        return Icon(FontAwesomeIcons.spa, color: Colors.purple);
      case TripType.nature:
        return Icon(FontAwesomeIcons.leaf, color: Colors.green);
      default:
        return Icon(FontAwesomeIcons.circleQuestion, color: Colors.grey);
    }
  }

  Color getDurationColor(int duration) {
    int maxDuration = 50; // Assuming 50 days as the maximum duration for color mapping
    int minDuration = 1;  // Assuming 1 day as the minimum duration
    double fraction = (duration - minDuration) / (maxDuration - minDuration);
    return Color.lerp(Colors.blue, Colors.red, fraction) ?? Colors.blue;
  }

  void selectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed(TripDetailsScreen.screenRoute, arguments: id)
        .then((result) {
      if (result != null) {
        //removeItem(result);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 250,
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.2),
                          Colors.black.withOpacity(0.9),
                        ],
                        stops: [0.6, 1],
                      ),
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.today, color: getDurationColor(duration)),
                        SizedBox(width: 6),
                        Text('$duration days'),
                      ],
                    ),
                    Row(
                      children: [
                        seasonIcon,
                        SizedBox(width: 6),
                        Text(seasonText),
                      ],
                    ),
                    Row(
                      children: [
                        activityIcon,
                        SizedBox(width: 6),
                        Text(tripType.toString().split('.').last),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
