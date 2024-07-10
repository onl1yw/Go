import 'package:flutter/material.dart';

class PlayPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          const Column(
            children: [
              Text(
                'Let\'s',
                style: TextStyle(
                    fontSize: 128,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 128,
              ),
            ],
          ),
          Container(
            width: 350, // Adjust the radius by changing the width
            height: 350,
            color: Colors.white,
            child: ClipOval(
              child: OutlinedButton(
                onPressed: () {
                  debugPrint('Received click');
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(50000), // Half of width or height
                  ),
                  side: const BorderSide(
                    width: 10.0,
                    color: Colors.black,
                  ), // Optional border
                ),
                child: const Text(
                  'Go',
                  style: TextStyle(
                      fontSize: 256,
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                      fontFamily: 'MakiSans',
                      letterSpacing: -80.0
                    ,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
