import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_interface1/screens/first_page_screen.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    FirstPageScreen(),
    Center(child: Text("Second Page Screen")),
    Center(child: Text("Third Page Screen")),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _tabs[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: WaterDropNavBar(
              backgroundColor: Colors.white,
              inactiveIconColor: Colors.grey,
              waterDropColor: Color.fromARGB(255, 84, 161, 224).withOpacity(01),
              barItems: [
                BarItem(filledIcon: Icons.home, outlinedIcon: Icons.home),
                BarItem(filledIcon: Icons.mail, outlinedIcon: Icons.mail),
                BarItem(filledIcon: Icons.people, outlinedIcon: Icons.people),
              ],
              selectedIndex: _currentIndex,
              onItemSelected: (index) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
      ),
    );
  }
}
