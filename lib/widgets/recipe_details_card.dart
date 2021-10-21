import 'package:flutter/material.dart';
import 'package:flutter_task_2/models/ingredient.dart';
import 'package:google_fonts/google_fonts.dart';
class RecipeDetailsCard extends StatelessWidget {
  const RecipeDetailsCard({ Key? key, required this.ingredient }) : super(key: key);

final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), 
          side: const BorderSide(
            width: 2,
            color: Colors.red )),
        child: SizedBox(
          height: 60,
          child: 
        Center(child: Text('${ingredient.quantity} ${ingredient.mesuringUnit} ${ingredient.name}',
        style: 
        GoogleFonts.roboto(fontSize: 18),
        )
        )
        ),
      ),
    );
  }
}