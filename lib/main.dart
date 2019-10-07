import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: TranslateApp(),
    ));

class TranslateApp extends StatefulWidget {
  @override
  _TranslateAppState createState() => _TranslateAppState();
}

class _TranslateAppState extends State<TranslateApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Google Translate',
        ),
        backgroundColor: Colors.blue,
        leading: Icon(Icons.menu),
      ),
      body: Center(
        child: Column(
          children: [
            Card(
                color: Colors.white,
                child: Column(children: [
                  Row(
                    children: <Widget>[
                      Text('English',
                          style: TextStyle(fontSize: 20, color: Colors.blue)),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Icon(Icons.repeat, color: Colors.blue),
                      SizedBox(
                        width: 50,
                      ),
                      Text('Indonesian',
                          style: TextStyle(fontSize: 20, color: Colors.blue)),
                      Icon(Icons.arrow_drop_down, color: Colors.blue),
                    ],
                  ),
                  Divider(color: Colors.black),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text('ENGLISH',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Icon(Icons.speaker),
                      SizedBox(
                        width: 220,
                      ),
                      Icon(Icons.cancel),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Text('  good morning',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.black)),
                      SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.camera),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.border_color),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.call),
                      SizedBox(
                        width: 70,
                      ),
                      Icon(Icons.volume_down),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 10,
                      ),
                      Text('Camera'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Handwriting'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Conversation'),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Voice'),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ])),
            Card(
              color: Colors.blue,
              margin: EdgeInsets.all(5),
              child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(Icons.volume_down),
                          Text('Indonesian',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          SizedBox(width: 180),
                          Icon(Icons.star)
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          Text('Selamat Pagi',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: Colors.white)),
                          SizedBox(width: 100),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 280),
                          Icon(Icons.volume_down),
                          Icon(Icons.volume_down),
                        ],
                      ),
                    ],
                  )),
            ),
            Card(
              color: Colors.white70,
              margin: EdgeInsets.all(5),
              child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('DEFINITIONS',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black)),
                          SizedBox(width: 100),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('exclaimation',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.grey)),
                        ],
                      ),
                      Text(
                          'expressing good wishes on meeting or parting during the morning'),
                      Text(
                          'He walked into Steins lounge on Tuesday Morning, bidding good morning to everyone who lined his route to the top  table"'),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
