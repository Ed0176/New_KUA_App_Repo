import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("/images/avatar.jpg"),
                  radius: 100.0,
                ),
              ),
              Center(
                child: Text(
                  "Green Green",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ])));
  }
}
