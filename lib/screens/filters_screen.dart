// ignore_for_file: prefer_const_constructors

import 'package:dawra/widgets/app_drawer.dart';
import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  static const screenRoute = '/filters';

  final Function saveFilters;
  final Map<String, bool> currentFilters;

  FiltersScreen(this.currentFilters, this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  var _summer = false;
  var _winter = false;
  var _forFamily = false;

  @override
  void initState() {
    _summer = widget.currentFilters['summer']!;
    _winter = widget.currentFilters['winter']!;
    _forFamily = widget.currentFilters['family']!;
    super.initState();
  }

  Widget buildSwitchListTile(
      String title, String subtitle, bool currentValue, void Function(bool) updateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: currentValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Filters',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'family': _forFamily,
                'summer': _summer,
                'winter': _winter,
              };
              widget.saveFilters(selectedFilters);
            },
          ),
        ],
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: [
          SizedBox(height: 50),
          Expanded(
            child: ListView(
              children: [
                buildSwitchListTile(
                  'In Summer',
                  'Only include trips available in summer',
                  _summer,
                  (newValue) {
                    setState(() {
                      _summer = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'In Winter',
                  'Only include trips available in winter',
                  _winter,
                  (newValue) {
                    setState(() {
                      _winter = newValue;
                    });
                  },
                ),
                buildSwitchListTile(
                  'For Family',
                  'Only include family-friendly trips',
                  _forFamily,
                  (newValue) {
                    setState(() {
                      _forFamily = newValue;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
