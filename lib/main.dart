import 'package:flutter/material.dart';
import 'package:flutter_meals_app/screens/categories_screen.dart';
import 'package:flutter_meals_app/screens/category_meals_screen.dart';
import 'package:flutter_meals_app/screens/favouritesScreen.dart';
import 'package:flutter_meals_app/screens/filters_screen.dart';
import 'package:flutter_meals_app/screens/meals_detail_screen.dart';
import 'package:flutter_meals_app/screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(225, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              title: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      routes: {
        '/': (ctx) => TabsScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealsDetailScreen.routeName: (ctx) => MealsDetailScreen(),
        FavouriteScreen.routeName: (ctx) => FavouriteScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(),
      },
    );
  }
}
