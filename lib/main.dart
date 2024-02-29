import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Instagram',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Expanded(
                flex:1,
                child: Container(
                  padding: EdgeInsets.all(5),
                  color: Colors.grey[300],
                  child: Row(
                    children: [
                      CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://placekitten.com/100/100?image=1'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://placekitten.com/100/100?image=2'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage('https://placekitten.com/100/100?image=3'),
                      )
                    ],
                  ),
                )),
            Expanded(
                flex:8,
                child: Container(
                  color: Colors.grey[100],
                  child: Column(
                    children: [
                      Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: FlutterLogo(
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            'mingreen',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                    ),
                      Flexible(
                          child: Container(
                            padding: EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.network('https://placekitten.com/400/400'),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite_border),
                                SizedBox(width: 8.0),
                                Icon(Icons.comment),
                                SizedBox(width: 8.0),
                                Icon(Icons.send),
                                Spacer(),
                                Icon(Icons.bookmark_border),
                              ],
                            ),
                            Text(
                              'Liked by username1, username2, and 100 others'),
                            Text('View all 20 comments'),
                            Text('2 hours ago')
                          ],
                        ),
                      ))],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}