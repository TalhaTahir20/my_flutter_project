// ignore_for_file: unused_local_variable, sized_box_for_whitespace

import 'package:animated_coffee/bottom_navbar.dart/appointment.dart';
import 'package:animated_coffee/bottom_navbar.dart/home_page.dart';
import 'package:animated_coffee/bottom_navbar.dart/inbox.dart';
import 'package:flutter/material.dart';

import '../bottom_navbar.dart/maps.dart';
import '../bottom_navbar.dart/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List bottomNav = [
    const HomePage(),
    const Maps(),
    const Inbox(),
    const Appointment(),
    const Profile(),
  ];

  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNav[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey[300],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey[600],
        showSelectedLabels: true,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Map',
            icon: Icon(
              Icons.directions,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Inbox',
            icon: Icon(
              Icons.chat_sharp,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Appointment',
            icon: Icon(
              Icons.book,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
        onTap: onTap,
      ),
    );
  }
}
