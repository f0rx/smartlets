import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateChildAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SafeArea(
          child: Text(
            "BROS CREATE CHILD ACCOUNT HERE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17.0,
            ),
          ),
        ),
      ),
    );
  }
}
