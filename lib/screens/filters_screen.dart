import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  static const routeName = '/filter-meals';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter Page'),
      ),
      drawer: MainDrawer(),
    );
  }
}
