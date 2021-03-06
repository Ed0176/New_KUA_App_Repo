import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);
  _SearchPageState createState() => _SearchPageState();
}

Widget TextTile(title) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Text(
      "$title",
      style: TextStyle(
        fontFamily: 'WaterBrush',
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
  );
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
          //width: 50,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              color: Colors.grey[850],
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                TextTile('Food'),
                TextTile('Arts and Entertainment'),
                TextTile('Technology'),
                TextTile('Politics'),
                TextTile('Writing'),
                TextTile('Business and Leadership'),
              ]),
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              CircleAvatar(
                backgroundImage: AssetImage("/images/avatar.jpg"),
                radius: 50.0,
              ),
            ]),
            //SizedBox(width: 500, height: 500),
          ]),
        ),
      ),
    );
  }
}
