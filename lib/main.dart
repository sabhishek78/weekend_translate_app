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
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Google Translate',),
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu),

        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: <Widget>[

              Row(
                children: <Widget>[
                  Text( 'English',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue)),
                  Icon(Icons.arrow_drop_down),
                  SizedBox(width: 50,),
                  Icon(Icons.repeat),
                  SizedBox(width: 50,),
                  Text( 'Indonesian',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue)),
                  Icon(Icons.arrow_drop_down),
                ],
              ),

              Divider(color: Colors.black),
              Row(
                children: <Widget>[

                  Icon(Icons.speaker),

                  Text( 'ENGLISH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black)),
                  SizedBox(width: 200,),
                  Icon(Icons.cancel),
                ],
              ),
              Text( 'good morning',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black,)),
              Row(
                children: <Widget>[

                  Icon(Icons.camera),
                  SizedBox(width: 60,),
                  Icon(Icons.border_color),
                  SizedBox(width: 60,),
                  Icon(Icons.call),
                  SizedBox(width: 60,),
                  Icon(Icons.volume_down),
                ],
              ),
              Row(
                children: <Widget>[

                  Text( 'Camera'),
                  SizedBox(width: 30,),
                  Text( 'Handwriting'),
                  SizedBox(width: 30,),
                  Text( 'Conversation'),
                  SizedBox(width: 30,),
                  Text( 'Voice'),
                ],
              ),
              Row(
                children: <Widget>[

                  Icon(Icons.volume_down),
                  Text( 'Indonesian',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue)),
                  SizedBox(width: 100),
                  Icon(Icons.star),
                ],
              ),
              Text( 'Selamat Pagi',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.blue)),
              Row(
                children: <Widget>[

                  Icon(Icons.volume_down),

                  Icon(Icons.star),
                ],
              ),
              Text( 'Definitions'),
              Text( 'Explainations'),
              Text( 'expressing good wishes on meeting or parting during the morning'),
              Text( 'He walked into Steins lounge on Tuesday Morning, bidding good morning to everyone who lined his route to the top  table"'),





            ]
        )
    );
  }
}
