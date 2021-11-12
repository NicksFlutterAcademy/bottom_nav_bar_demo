import 'package:bottom_nav_bar_demo/screens/home_screen.dart';
import 'package:bottom_nav_bar_demo/screens/posts_screen.dart';
import 'package:bottom_nav_bar_demo/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  _NavigationViewState createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom NavBar Demo"),
      ),
      body: IndexedStack(
        children: [
          HomeScreen(),
          PostsScreen(),
          SettingsScreen(),
        ],
        index: _selectedIndex,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.post_add), label: "My Posts"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),

        ],
        selectedItemColor: Colors.amberAccent,

      ),
    );
  }
}
