import 'package:flutter/material.dart';
import 'package:fooderlich/ThemeData/fooderlich_theme.dart';

class Card3Page extends StatelessWidget {
  const Card3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: const BorderRadius.all(Radius.circular(10))),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Icon(
                Icons.book,
                color: Colors.white,
                size: 40,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Recipe Trends",
                style: FooderlichTheme.dark().textTheme.displayMedium,
              )
            ]),
          ),
          Center(
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 12,
              children: [
                Chip(
                  label: Text(
                    'Healthy',
                    style: FooderlichTheme.dark().textTheme.bodySmall,
                  ),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: () {
                    print('Deleted');
                  },
                ),
                Chip(
                  label: Text('Vegan',
                      style: FooderlichTheme.darkTextTheme.bodySmall),
                  backgroundColor: Colors.black.withOpacity(0.7),
                   onDeleted: (){
                    print('deleted');
                  },
                ),
                   Chip(
                  label: Text('Carrots',
                      style: FooderlichTheme.darkTextTheme.bodySmall),
                  backgroundColor: Colors.black.withOpacity(0.7),
                  onDeleted: (){
                    print('deleted');
                  },
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
