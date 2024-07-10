import 'package:flutter/material.dart';

class Sidebar extends StatefulWidget {
  final Function(int) onPageSelected;

  Sidebar({required this.onPageSelected});

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  int _selectedIndex = 0;
  var space = const SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return Container(// Adjust the width as needed
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildFloatingActionButton(0, Icons.play_arrow, 'Play'),
          space,
          _buildFloatingActionButton(1, Icons.people, 'Friends'),
          space,
          _buildFloatingActionButton(2, Icons.history, 'History'),
          space,
          _buildFloatingActionButton(3, Icons.account_circle, 'Account'),
        ],
      ),)
    );
  }

  Widget _buildFloatingActionButton(int index, IconData icon, String tooltip) {
    // Calculate the scale factor
    double scaleFactor = _selectedIndex == index ? 1.1 : 1;

    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Transform.scale(
        scale: scaleFactor,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          splashColor: Colors.white,
          hoverColor: Colors.white,
          tooltip: tooltip,
          child: Center(
            child: Icon(icon, size: 28 * scaleFactor, color: Colors.black,),
          ), // Adjust icon size based on scale factor
          onPressed: () {
            widget.onPageSelected(index);
            setState(() {
              _selectedIndex = index;
            });
          },
          heroTag: null, // Important to set heroTag to null for multiple FABs
          elevation: _selectedIndex == index ? 1 : 0,
          shape: CircleBorder(
            side: BorderSide(
              color: Colors.black,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
