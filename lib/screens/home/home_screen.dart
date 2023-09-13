import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'food/food_screen.dart';
import 'drink/drink_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> _widgets() {
      return [FoodPage(), DrinkPage()];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          icon: FaIcon(FontAwesomeIcons.bowlFood),
          title: ("Home"),
          activeColorPrimary: Color(0xFF00AA13),
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: FaIcon(FontAwesomeIcons.wineGlass),
          title: ("Cart"),
          activeColorPrimary: Color(0xFF00AA13),
          inactiveColorPrimary: Colors.grey,
        ),
        PersistentBottomNavBarItem(
          icon: FaIcon(FontAwesomeIcons.solidUser),
          title: ("Profile"),
          activeColorPrimary: Color(0xFF00AA13),
          inactiveColorPrimary: Colors.grey,
        ),
      ];
    }

    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: controller,
      screens: _widgets(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style13, // Choose the nav bar style with this property.
    );
  }
}
