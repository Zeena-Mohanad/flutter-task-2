import 'package:flutter/material.dart';

import 'package:flutter_task_2/models/recipe.dart';
import 'package:flutter_task_2/widgets/recipe_card.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.recipe,
  }) : super(key: key);
  
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
      body: recipeCard(recipe: recipe),
      
    );
  }
}
