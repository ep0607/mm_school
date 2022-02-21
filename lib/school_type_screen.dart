import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'models/standards.dart';

class SchoolTypeScreen extends StatefulWidget {
  final StateItem stateItem;

  SchoolTypeScreen(this.stateItem);

  @override
  _SchoolTypeScreenState createState() => _SchoolTypeScreenState();
}

class _SchoolTypeScreenState extends State<SchoolTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Hello, Welcome from Type Screen"),
    );
  }

}