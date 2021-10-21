import 'package:flutter/material.dart';
import 'package:flutter_task_2/models/recipe.dart';
import 'package:flutter_task_2/widgets/recipe_details_card.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails ({ Key? key, required this.recipe }) : super(key: key);
final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
        title: const Text ("Fooder", 
        style: TextStyle(
          color: Colors.black),) 
      ),
      body: ListView.builder(
        itemCount: recipe.ingridents.length,
        itemBuilder: (context,index){
          return RecipeDetailsCard(ingredient: recipe.ingridents[index]);
        },
      ),
    );
    
  }
}