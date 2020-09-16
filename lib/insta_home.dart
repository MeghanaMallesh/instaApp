import 'package:flutter/material.dart';
import 'package:myapp/insta_body.dart';


class InstaHome extends StatelessWidget {

final topBar=new AppBar(
  backgroundColor: new Color(0xfff8faf8),
centerTitle: true,
elevation: 1.0,
//leading: new Icon(Icons.camera_alt),
title: Padding(
         padding: const EdgeInsets.only(top: 12.0),

child: Column ( 
  children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[

        Icon(Icons.camera_alt),
        SizedBox(width:20),
        Text('Instagram',style:TextStyle(color: Colors.blue),),
          ]
        ),
        Row(
          children: <Widget>[
        Icon(Icons.add_box),
        SizedBox(width:20),
        Icon(Icons.send),
          ],
        ),
      ],
    ),

         ],
      ),
 ),
);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: topBar,
      body: new InstaBody(),
      bottomNavigationBar: new Container(
        color: Colors.white,
        height: 50.0,
        alignment: Alignment.center,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new IconButton(
              icon: Icon(
                Icons.home,
              ),
              onPressed: () {},

            ),
            new IconButton(
              icon:Icon(
                Icons.search,
            ),
              onPressed: null,
            ),
            new IconButton(
              icon:Icon(
                Icons.add_box),
                onPressed: null,
            ),
             new IconButton(
              icon:Icon(
                Icons.favorite),
                onPressed: null,
            ),
             new IconButton(
              icon:Icon(
                Icons.account_box),
                onPressed: null,
            ),
          ],),
      ),
    );
  }
}
    
  

 