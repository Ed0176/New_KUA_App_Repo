import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navbar';

class Del extends StatefulWidget {
  const Del({Key? key}) : super(key: key);
  _DelState createState() => _DelState();
}

class _DelState extends State<Del> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      child: NavBar(),
    ));
  }
}
