import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Let's",style: TextStyle(fontSize: 25),),
            Text("News",style: TextStyle(fontSize: 25,color: Colors.lightBlueAccent),),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
