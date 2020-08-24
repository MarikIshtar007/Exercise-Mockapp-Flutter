import 'package:flutter/material.dart';
import 'dart:math' as math;

class PageTwo extends StatefulWidget {
  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.grey[800],),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Dashboard', style: TextStyle(color: Colors.grey[800], fontSize: 20),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/one.jpg'),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Text('Today', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[800]),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(colors: [
                            Colors.blue,
                            Colors.blue.withOpacity(.7)
                          ])
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Steps", style: TextStyle(color: Colors.white, fontSize: 30),),
                              SizedBox(
                                height: 10,
                              ),
                              Text('3 500', style: TextStyle(color: Colors.white, fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(colors: [
                              Colors.pink,
                              Colors.red.withOpacity(.7)
                            ])
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sports", style: TextStyle(color: Colors.white, fontSize: 30),),
                              SizedBox(
                                height: 10,
                              ),
                              Text('25 min', style: TextStyle(color: Colors.white, fontSize: 25),)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40,),
                Text('Health Categories', style: TextStyle(color: Colors.grey[800], fontSize: 20),),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[200])),
                          gradient: LinearGradient(
                            colors: [Colors.green, Colors.green.withOpacity(0.7)]
                          )
                        ),
                        child: Text('Activity', style: TextStyle(color: Colors.grey[800],  fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[200]))
                        ),
                        child: Text('Activity', style: TextStyle(color: Colors.grey[800],  fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(color: Colors.grey[200]))
                        ),
                        child: Text('Activity', style: TextStyle(color: Colors.grey[800],  fontSize: 15, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
