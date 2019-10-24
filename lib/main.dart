import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: TranslateApp(),
    ));

class TranslateApp extends StatefulWidget {
  @override
  _TranslateAppState createState() => _TranslateAppState();
}

class _TranslateAppState extends State<TranslateApp> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation<double> _animation;
  bool toggle=true;
  @override
  void initState() {
    controller = AnimationController(
        duration: Duration(milliseconds: 1200), vsync: this, value: 0);

  /*  controller.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      }
      else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });*/

    controller.addListener(() {

      setState(() {});
    });
    super.initState();
  }
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
      body: Container(
        color: Colors.white,
        child: Stack(

          children: <Widget>[// Max Size
            AlignTransition(
              alignment: Tween(begin: Alignment(-1.0,-1.0),end: Alignment(1.0,-1.0)).animate(controller),
              child: Container(
                color: Colors.white,
                height: 50.0,
                width: 120.0,
                child: Row(
                  children: <Widget>[
                    Text("English",style: TextStyle(color: Colors.blue),),
                    Icon(Icons.arrow_drop_down,color: Colors.blue,),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: RotationTransition(
                turns: CurvedAnimation(
                  parent: controller,
                  curve: Curves.easeInCirc,
                ),
                child: Container(
                  color: Colors.white,
                  height: 50.0,
                  width: 50.0,
                    child: InkWell(
                      customBorder: CircleBorder(),
                      splashColor: Colors.red,

                      child: IconButton(
                         color: Colors.blue,
                         icon: Icon(Icons.swap_horiz),
                        onPressed: () {
                           if(toggle){
                             controller.forward();
                           }
                           else if(!toggle){
                             controller.reverse();
                           }
                           toggle=!toggle;
                          setState(() {

                          });
                        },
                      ),
                    ),

                ),
              ),
            ),
            AlignTransition(
              alignment: Tween(begin: Alignment(1.0,-1.0),end: Alignment(-1.0,-1.0)).animate(controller),
              child: Container(
                color: Colors.white,
                height: 50.0,
                width: 120.0,
                child: Row(
                  children: <Widget>[
                    Text("Indonesian",style: TextStyle(color: Colors.blue),),
                    Icon(Icons.arrow_drop_down,color: Colors.blue,),
                  ],
                ),
              ),
            )

          ],

        ),
      ),

    );
  }
}
/*Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: <Widget>[
                    Text("English",style: TextStyle(color: Colors.blue),),
                    Icon(Icons.arrow_drop_down,color: Colors.blue,),
                  ],
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  child: InkResponse(
                      splashColor: Colors.red,
                      onTap: (){setState(() {});},
                      child: Icon(Icons.swap_horiz,color: Colors.blue,))),
              Container(
                  alignment: Alignment.bottomRight,
                child: Row(
                  children: <Widget>[
                    Text("Indonesian",style: TextStyle(color: Colors.blue),),
                    Icon(Icons.arrow_drop_down,color: Colors.blue,),
                  ],
                ),
              ),*/