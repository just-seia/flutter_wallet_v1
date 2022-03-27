// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        bottom: false,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                        child: Text('ss'),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.blue,
                        child: Text('ss'),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.green,
                        child: Text('ss'),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                        child: Text('ss'),
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.black,
                        child: Text('ss'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
