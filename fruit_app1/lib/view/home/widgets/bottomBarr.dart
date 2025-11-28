import 'package:flutter/material.dart';

class Bottombarr extends StatefulWidget {
  const Bottombarr({super.key});

  @override
  State<Bottombarr> createState() => _BottombarrState();
}

class _BottombarrState extends State<Bottombarr> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onItemTapped,
      selectedItemColor: Colors.lightBlue,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled), label: "home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: "favourite"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
      ],
    );
  }
}
