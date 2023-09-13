import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../food/food_screen.dart';

class DrinkPage extends StatefulWidget {
  const DrinkPage({super.key});

  @override
  State<DrinkPage> createState() => _DrinkPageState();
}

class _DrinkPageState extends State<DrinkPage> {
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Text(
              'Drink',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.black,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FoodPage(),
                        ));
                  },
                  icon: FaIcon(FontAwesomeIcons.search),
                  color: Color(0xFF00AA13)),
            ],
          ),
        ));
  }
}
