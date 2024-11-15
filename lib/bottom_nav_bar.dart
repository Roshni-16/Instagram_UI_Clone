import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/add/add.dart';
import 'package:instagram_clone/home_page.dart';
import 'package:instagram_clone/screens/profile_screen.dart';
import 'package:instagram_clone/screens/reels_screen.dart';
import 'package:instagram_clone/screens/search_page.dart'; // Example import for the search screen

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex =
      0; // Keeps track of the selected index in the BottomNavigationBar

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex =
          index; // Update the index when a user taps on a BottomNavigationBar item
    });
  }

  // List of screens to navigate to
  final List<Widget> _screens = [
    const HomePage(), // Your HomePage widget
    SearchPage(),
    AddPost(),
    ReelsScreen(),
    ProfileScreen(),
    // Example: Search screen
    // Add other screens here, like AddScreen(), VideoScreen(), etc.
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[
          _selectedIndex], // Display the screen based on the selected index
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Highlight the current tab
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '', // Add label here
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: '', // Add label here
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
            label: '', // Add label here
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.ondemand_video_rounded,
              color: Colors.black,
            ),
            label: '', // Add label here
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: '', // Add label here
          ),
        ],
      ),
    );
  }
}
