import 'package:dexian/features/home/dashboard.dart';
import 'package:dexian/features/settings/settings.dart';
import 'package:dexian/widgets/botton_nav_bar.dart';
import 'package:flutter/material.dart';

/// This Class is handling the [Page Injection] in the CustomNavBar
class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// Pages in the [CustomNavBar]
  static const List<Widget> _pages = <Widget>[
    Dashboard(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar:
          CustomNavBar(currentIndex: _selectedIndex, onTap: _onItemTapped),
    );
  }
}
