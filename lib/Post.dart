import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Icon(Icons.person , color: Colors.black),
            title: Text('Owner'),
            subtitle: Text('3h'),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('My post'),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('100'),
                    Icon(Icons.thumb_up, color: Colors.blue),
                    Icon(Icons.favorite, color: Colors.red),
                    SizedBox(width: 8),

                  ],
                ),
                Text('100 Comments'),
              ],
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/imgs/singleLike.jpg"), height: 20, width: 20,),
                      SizedBox(width: 5),
                      Text("Like" ),
                    ],

                  ),

                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Row(
                    children: [
                      Image(image: AssetImage("assets/imgs/comment.jpg"), height: 20, width: 20),
                      SizedBox(width: 5),
                      Text("Comment" ),
                    ],

                  ),

                ],
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Row(

                    children: [
                      Image(image: AssetImage("assets/imgs/share.png"), height: 20, width: 20,),
                      SizedBox(width: 5),
                      Text("Share" ),
                    ],

                  ),

                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
