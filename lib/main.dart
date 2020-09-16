import 'package:flutter/material.dart';
import 'package:myapp/insta_home.dart';
import 'package:uni_links/uni_links.dart';
  

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        primaryIconTheme: IconThemeData(color:Colors.black),
        primaryTextTheme: TextTheme(title: TextStyle(color: Colors.black),
        ),
        textTheme: TextTheme(title: TextStyle(color: Colors.blue))),
     home: new  InstaHome(),
    );
  }
}
   
