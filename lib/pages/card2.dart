import 'package:flutter/material.dart';
import 'package:fooderlich/ThemeData/fooderlich_theme.dart';

import '../widgets/author_card.dart';

class Card2Page extends StatelessWidget {
  const Card2Page({super.key});

  @override
  Widget build(BuildContext context) {
    var boxDecoration = BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/mag5.png'),
          fit: BoxFit.cover,
        ));
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: boxDecoration,
        child: Column(
          children: [
            const AuthorCard(
              authorName: 'Miguel Angel',
              title: "Smoothie Connoisseur",
              imageProvider: AssetImage('assets/mag5.png'),
            ),
            Expanded(
                child: Stack(
              children: [
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.light().textTheme.displayLarge,
                    )),
                Positioned(
                    bottom: 70,
                    left: 16,
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Text(
                        'Smoothies',
                        style: FooderlichTheme.light().textTheme.displayLarge,
                      ),
                    )
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
