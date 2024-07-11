import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'play_page.dart';
import 'friends_page.dart';
import 'history_page.dart';
import 'account_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;

  final _pages = [
    PlayPage(),
    FriendsPage(),
    HistoryPage(),
    AccountPage(),
  ];

  void _onPageSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            // Use Row to place sidebar on the left
            children: [
              Sidebar(onPageSelected: _onPageSelected), // Sidebar widget
              Expanded(
                child: _pages[_selectedIndex], // Main content area
              ),
            ],
          ),
        ));
  }
}
