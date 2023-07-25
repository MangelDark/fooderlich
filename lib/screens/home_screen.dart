import 'package:flutter/material.dart';
import 'package:fooderlich/pages/card1.dart';
import 'package:fooderlich/pages/card2.dart';
import 'package:fooderlich/pages/card3.dart';

import '../ThemeData/fooderlich_theme.dart';

class HomeScreen extends StatefulWidget{
   
 const HomeScreen({Key? key}): super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

      int _selectedIndex = 0;

      static List<Widget> pages = <Widget>[
              // TODO: Replace with Card1
        const CardOneScreen(),
        // TODO: Replace with Card2
        const Card2Page(),
        // TODO: Replace with Card3
        const Card3Page()
      ];


  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }



 @override
 Widget build(BuildContext context){
      final theme = FooderlichTheme.dark();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          style:  theme.textTheme.displayLarge,
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: theme.bottomNavigationBarTheme.backgroundColor,
        selectedItemColor: theme.bottomNavigationBarTheme.selectedItemColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'Card'
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'Card2'
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
            ),
            label: 'Card3'
          )
        ]
      ),
     );
    }
}