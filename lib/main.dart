// ignore_for_file: unused_field, avoid_unnecessary_containers, library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_flutter/homeScreen.dart';
import 'package:portfolio_flutter/projectsScreen.dart';
import 'package:portfolio_flutter/skills.dart';
import 'package:portfolio_flutter/social.dart';

final Uri fb = Uri.parse('https://www.facebook.com/dakshraman6161');
final Uri tw = Uri.parse('https://twitter.com/dakshraman');
final Uri ig = Uri.parse('https://www.instagram.com/dakshraman');
final Uri git = Uri.parse('https://github.com/dakshraman');
final Uri li = Uri.parse('https://www.linkedin.com/in/dakshraman');
final Uri messager = Uri.parse('https://www.facebook.com/dakshraman6161');
final Uri email = Uri.parse('mailto:ramandaksh6161@gmail.com');
final Uri telegram = Uri.parse('https://t.me/dakshraman');
final Uri youtube =
    Uri.parse('https://www.youtube.com/channel/UC2C7LLVFY4F4hfsvqaBG5ZQ');
final Uri skype = Uri.parse('https://join.skype.com/invite/uRAtPFcYv54f');
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(primaryColor: Colors.deepPurple),
      home: const MyBottomNavBar(),
    );
  }
}

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  _MyBottomNavBarState createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const MyHomePage(
      title: 'Raman Daksh',
    ),
    const Social(
      title: 'Social',
    ),
    const Skills(
      title: 'Technical Skills',
    ),
    const ProfilePage(
      title: 'Projects',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_stack),
            activeIcon: Icon(CupertinoIcons.square_stack_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.addressBook),
            activeIcon: Icon(FontAwesomeIcons.solidAddressBook),
            label: 'Social',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2),
            activeIcon: Icon(CupertinoIcons.square_grid_2x2_fill),
            label: 'Technical Skills',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cube),
            activeIcon: Icon(CupertinoIcons.cube_fill),
            label: 'Projects',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.deepPurple,
        activeColor: Colors.white,
        inactiveColor: const Color.fromARGB(255, 221, 209, 255),
        iconSize: 25,
        onTap: _onItemTapped,
      ),
    );
  }
}
