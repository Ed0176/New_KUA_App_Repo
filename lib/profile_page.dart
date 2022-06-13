import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  _ProfilePageState createState() => _ProfilePageState();
}

Widget theTiles(String title, IconData icon) {
  return Column(
    children: [
      ListTile(
          leading: Icon(icon, color: Color.fromARGB(255, 241, 153, 55)),
          focusColor: Color.fromARGB(255, 241, 153, 55),
          title: Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
          //subtitle: Text(sub, style: TextStyle(fontSize: 20.0, color: Colors.white)),
          tileColor: Color.fromARGB(255, 36, 36, 36),
          onTap: () {
            final Uri _emailLaunchUri = Uri(
                // scheme: thescheme,
                //path: sub,
                );

            // launch(_emailLaunchUri.toString());
          }),
      Container(height: 5.0, color: Colors.black)
    ],
  );
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
              theTiles('Account', Icons.account_circle),
              theTiles('Saved Lessons', Icons.bookmark),
              theTiles('Downloaded Lessons', Icons.done),
            ])));
  }
}
