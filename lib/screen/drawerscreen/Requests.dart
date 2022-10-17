import 'package:flutter/material.dart';

class Requests extends StatelessWidget {


@override
Widget build(BuildContext context) {
	return Scaffold(
      body:Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
        "Requests",
        style: TextStyle(
          color: Colors.green[900],
          fontSize: 45,
          fontWeight: FontWeight.w500,
        ),
        ),
      ),
      ),
    );
}
}