import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_2/screens/home.dart';
import 'package:flutter_task_2/models/ingredient.dart';
import 'models/recipe.dart';


void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  var kabab = Recipe (
    title: 'kabab', 
    subtitle: 'delicious iraqi Kabab',
    imageUrl: "assets/images/kabab.jpeg",
    ingridents: [
      Ingredient(name: 'chicken', quantity: 0.5, mesuringUnit: 'kg'),
      Ingredient(name: 'meat', quantity: 0.5, mesuringUnit: 'kg'),
      Ingredient(name: 'tomato', quantity: 0.5, mesuringUnit: 'kg'),
    ]);
  runApp(MyApp(recipe: kabab,));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.recipe,
  }) : super(key: key);
final Recipe recipe;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(recipe: recipe,),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
