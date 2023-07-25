import 'package:flutter/material.dart';

import '../ThemeData/fooderlich_theme.dart';

class CardOneScreen extends StatelessWidget{
   
 const CardOneScreen({Key? key}): super(key: key);

 final String category = "Editor\`s Choise";
 final String title = "The Art of Dough";
 final String description = "Learn to make the perfect bread.";
 final String chef = "Ray Wenderlich";
  
 @override
 Widget build(BuildContext context){
  final theme = FooderlichTheme.dark();

    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(
        width: 350,
        height: 450
      ),
      decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/mag1.png'),
        fit: BoxFit.cover
        ),
        borderRadius: BorderRadius.all(Radius.circular(10))
       ),
      child: Stack(
        children: [
          Text(category,style: theme.textTheme.titleSmall),
          Positioned(
            top: 20,
            child: Text(title,style: theme.textTheme.displayMedium)),
          Positioned(
            right: 0,
            bottom: 30,
            child: Text(description,style: theme.textTheme.bodyLarge)),
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(chef,style: theme.textTheme.bodyLarge)),
        ]
      ),
      ),
    );
    }
 }