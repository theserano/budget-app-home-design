import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  var _currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return SalomonBottomBar(
      currentIndex: _currentIndex,
      onTap: (i) => setState(() => _currentIndex = i),
      selectedItemColor: Color(0xFFC68EFD),
      unselectedItemColor: Color.fromARGB(255, 138, 138, 138),
      backgroundColor: Color(0xFF181818),
      items: [
        SalomonBottomBarItem(
          icon: Icon(Icons.home_outlined),
          title: Text('Home'),
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.description_outlined),
          title: Text('Budget'),
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.storage_rounded),
          title: Text('Budget'),
        ),
        SalomonBottomBarItem(
          icon: Icon(Icons.folder_outlined),
          title: Text('Home'),
        ),
        SalomonBottomBarItem(icon: Icon(Icons.menu), title: Text('Menu')),
      ],
    );
  }
}
