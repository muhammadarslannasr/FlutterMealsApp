import 'package:flutter/material.dart';
import 'package:flutter_meals_app/models/meal.dart';
import 'package:flutter_meals_app/widgets/meal_item.dart';

class FavouriteScreen extends StatefulWidget {
  final List<Meal> favouriteMeals;


  FavouriteScreen(this.favouriteMeals);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    if(widget.favouriteMeals.isEmpty){
      return Center(
        child: Text('You have no favourites yet - start adding some!'),
      );
    }else{
      return ListView.builder(
          itemCount: widget.favouriteMeals.length,
          itemBuilder: (ctx,index){
            return MealItem(
                id: widget.favouriteMeals[index].id,
                title: widget.favouriteMeals[index].title,
                imageUrl: widget.favouriteMeals[index].imageUrl,
                duration: widget.favouriteMeals[index].duration,
                complexity: widget.favouriteMeals[index].complexity,
                affordability: widget.favouriteMeals[index].affordability,);
          });
    }

  }
}
