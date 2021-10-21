
import 'ingredient.dart';

class Recipe{
  final String title;
  final String subtitle;
  final String imageUrl;
  final List<Ingredient> ingridents;

  Recipe({required this.title,required this.subtitle,required this.imageUrl,required this.ingridents});
}