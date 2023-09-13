import 'package:flutter/material.dart';
import 'package:local_app/screens/home/food/food_screen.dart';
import 'package:local_app/theme.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class HomePage extends StatelessWidget {
  
  PersistentTabController _controller;
  _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('food'),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search_rounded))
        ],
      ),
      body: ,
    );
  }
}