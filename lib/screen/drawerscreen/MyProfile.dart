import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {


@override
Widget build(BuildContext context) {
	return Scaffold(
      body:Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
        "MyProfile",
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