import 'package:flutter/material.dart';
import '../ThemeData/fooderlich_theme.dart';


class FooderlichScreen extends StatelessWidget{
   
 const FooderlichScreen({Key? key}): super(key: key);
  
 @override
 Widget build(BuildContext context){
      final theme = FooderlichTheme.dark();
    return Scaffold(
          appBar: AppBar(
            title: Text(
              'Fooderlich', 
              style:  theme.textTheme.titleLarge,
              ),
              elevation: 0.0,
              ),
          body: Center(child: Text('Le`t go cooking',style: theme.textTheme.displayLarge,)),
          );
    }
 }