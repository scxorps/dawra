// ignore_for_file: prefer_const_constructors, unnecessary_string_interpolations, use_key_in_widget_constructors, sized_box_for_whitespace, sort_child_properties_last, prefer_const_constructors_in_immutables

import 'package:dawra/widgets/app_data.dart';
import 'package:flutter/material.dart';

class TripDetailsScreen extends StatelessWidget {
  static const screenRoute = '/trip-details';

  final Function manageFavorite;
  final Function isFavorite;



  TripDetailsScreen(this.manageFavorite, this.isFavorite) ;

  Widget buildSectionTitle(BuildContext context, String titleText) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      alignment: Alignment.topLeft,
      child: Text(
        titleText,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget buildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final tripId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == tripId);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('${selectedTrip.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedTrip.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            buildSectionTitle(context, 'Activities'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.activities.length,
                itemBuilder: (ctx, index) => Card(
                  elevation: 0.3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      selectedTrip.activities[index],
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            buildSectionTitle(context, 'Daily program'),
            buildListViewContainer(
              ListView.builder(
                itemCount: selectedTrip.program.length,
                itemBuilder: (ctx, index) => Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 20,
                        //color: Colors.yellow,
                        child: Text(
                          'Day ${index + 1}',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                      title: Text(selectedTrip.program[index]),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(tripId)? Icons.star: Icons.star_border
          ),
        onPressed:() => manageFavorite(tripId),

      ),
    );
  }
}
