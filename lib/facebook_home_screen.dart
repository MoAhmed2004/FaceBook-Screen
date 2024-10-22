import 'package:flutter/material.dart';
import 'package:second_assignment/Post.dart';

class FacebookHomeScreen extends StatelessWidget {
@override
Widget build(BuildContext context) {
  double height=MediaQuery.of(context).size.height*0.1;
  return Scaffold(
    appBar: AppBar(
      title: Text('Home'),
      backgroundColor: Colors.blue,
    ),
    body: ListView(
      children: [
        Container(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:AssetImage("assets/imgs/facebookStory.jpg"),
                  child: Text('Owner', style: TextStyle(color: Colors.white, fontSize: 10)),
                ),
              );
            },
          ),
        ),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
        PostWidget(),
      ],
    ),
  );
}
}
