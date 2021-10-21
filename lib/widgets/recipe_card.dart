import 'package:flutter/material.dart';
import 'package:flutter_task_2/screens/recipe_details.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/recipe.dart';

// ignore: camel_case_types
class recipeCard extends StatelessWidget {
   const recipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);
final Recipe recipe;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context){
              return RecipeDetails(recipe: recipe);
            }));
        },
        child: Container(
          decoration:  BoxDecoration(
            image: DecorationImage(
              image: AssetImage(recipe.imageUrl)
            ),
          ),
          child: Stack(
            children: [
              Positioned(child:  Text('${recipe.title}',
              style: 
              GoogleFonts.roboto(fontSize: 26, color:Colors.white, fontWeight: FontWeight.bold),
              ),
              top: 70,
              left: 20,),
              Positioned(child: Text('${recipe.subtitle}',
              style: 
              GoogleFonts.roboto(fontSize: 20, color:Colors.white, fontWeight: FontWeight.bold),
              ),
              top: 100,
              left: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
