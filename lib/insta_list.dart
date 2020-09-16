import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/insta_stories.dart';


//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class InstaList extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
        return new ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => index == 0
          ? new SizedBox(
            child: new InstaStories(),
            height: deviceSize.height * 0.19,
          ) 
          : Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        new Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                               fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://picsum.photos/250?image=9',
                          ),
                            )
                          ),
                        ),
                        new SizedBox(
                          width:10.0,
                        ),
                        new Text(
                          "iamMegha",
                          style:TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    new IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: null,
                    )
                  ],
                ),
              ),
              Flexible(
                fit: FlexFit.loose,
                          child: new Image.network(
                              'https://picsum.photos/250?image=9',
                              fit: BoxFit.cover,
                          ),
              ),
              /*Padding(
                padding: const EdgeInsets.all(16.0) ,
                child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                 children: <Widget>[
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                        new Icon(FontAwesomeIcons.heart,
                           ),
            new SizedBox(
              width: 60.0,
            ),
            new Icon(FontAwesomeIcons.comment,
             ),
              new SizedBox(
              width: 60.0,
            ),      
            new Icon(FontAwesomeIcons.paperplane,
            ),
                      ],
                  ),
                  new Icon(FontAwesomeIcons.bookmark)
             ],),
            ),*/
            //3rd row
            Padding(
                padding: const EdgeInsets.all(6.0) ,
           child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[

        Icon(Icons.date_range),
        SizedBox(width:10),
        Icon(Icons.save),
        SizedBox(width:10),
        Icon(Icons.send),
          ]
        ),
        Row(
          children: <Widget>[
        Icon(Icons.comment),
          ],
        )
      ]
    ),
            ),
            //4TH ROW
             Padding(
                padding: const EdgeInsets.all(6.0) ,
                child: Text(
                  "liked by maNumegha,rm and 6842,820 others",
                  style: TextStyle(fontWeight: FontWeight.normal),
                ),
             ),
             //5th row
             Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                               fit: BoxFit.fill,
                          image: new NetworkImage(
                              'https://picsum.photos/250?image=9',
                          ),
                            )
                          ),
                        ),
                        new SizedBox(
                          width: 10.0,

                        ),
                        Expanded(
                          child: new TextField(
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: " Add a comment........"
                            ),
                          ),
                        ),

        ],
      ),
             ),
             //6th row
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0) ,
                child: 
                Text("2 Day Ago", style: TextStyle(color: Colors.grey),
                ),
             ),
            ],
    ),
        );
  }
}
