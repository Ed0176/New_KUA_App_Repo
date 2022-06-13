import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          //title: Text('Course'),
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
          ),
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CircleAvatar(
                backgroundImage: AssetImage("/images/avatar.jpg"),
                radius: 50.0,
              ),
            ]),
            Container(
              color: Colors.grey[900],
              child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                CircleAvatar(
                  backgroundImage: AssetImage("/images/avatar.jpg"),
                  radius: 50.0,
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
