
import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
         length:3,
          child: Scaffold(
        appBar: AppBar(
          title: Text("තුන් සූත්‍රය"),
          leading: IconButton(
            icon: Icon(Icons.share),
            onPressed:() {},
          ),
          
          actions: <Widget>[
             IconButton(
            icon: Icon(Icons.search),
            onPressed:() {},
        ),
            IconButton(
            icon: Icon(Icons.more_horiz),
            onPressed:() {},
            ),
          ],
             bottom: TabBar(
        tabs: [
          Tab(text: "මහා මංගල සූත්‍රය"),
          Tab(text: "කරණීය මෙත්ත සූත්‍රය"),
          Tab(text: "රතන සූත්‍රය"),
        ],
      ),
           elevation: 30.0, 
          ),
          body: TabBarView(
            children: [
              tab1(),
              tab2(),
              tab3(),
            ],
          ),
        ),
    );
     
  
  }
}
Widget tab1(){
  
   return Container(
padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
  height:320 ,
  width: 240,
  decoration: BoxDecoration(
    image:DecorationImage(image:AssetImage('asset/m1.jpg'),
    )
    
  ),
  child:Column(
    children: <Widget>[
      Material(
        child:Container(
          height:128,
  width: 350,
  decoration: BoxDecoration(
    image:DecorationImage(image:AssetImage('asset/m2.jpg'),
    ),)
        )
      )
    ],
  )
    );
   
}



Widget tab2(){
  
   return Container(
padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
  height:320 ,
  width: 240,
  decoration: BoxDecoration(
    image:DecorationImage(image:AssetImage('asset/.jpg'))
  ),
    );

}

Widget tab3(){
  
   return Container(
padding: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
  height:320 ,
  width: 240,
  decoration: BoxDecoration(
    image:DecorationImage(image:AssetImage('asset/th.jpg'))
  ),
    );

}
