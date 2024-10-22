import 'package:flutter/material.dart';
import 'package:second_assignment/facebook_home_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_outlined,
                              size: 50, color: Colors.white),
                        ],
                      ),
                      SizedBox(height: 30),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Email or Phone',
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white70),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white70),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        child: Text('LOG IN',
                            style: TextStyle(color: Colors.white)),
                        style: ElevatedButton.styleFrom(
                          shape: LinearBorder(),
                          backgroundColor:
                              Colors.grey.shade500.withOpacity(0.2),
                          minimumSize: Size(double.infinity, 50),
                        ),
                        onPressed: () {
                          Navigator.push(context,(MaterialPageRoute(builder: (context) => FacebookHomeScreen())));
                        },
                      ),
                      SizedBox(height: 100),

                      Text("Sign Up For Facebook",
                          style: TextStyle(color: Colors.white)),

                      SizedBox(height: 15),

                      Text("Forget Password?",
                          style: TextStyle(color: Colors.white)),

                      SizedBox(height: 50),
                    ]
                )
            )
        )
    );
  }
}
