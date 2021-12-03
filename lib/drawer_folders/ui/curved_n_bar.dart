import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled/drawer_folders/ui/post.dart';
import 'package:untitled/drawer_folders/ui/dashboard.dart';
import 'package:untitled/drawer_folders/ui/history.dart';

class curved_n_bar extends StatefulWidget{
  _statee createState()=> _statee();
}

class _statee extends State<curved_n_bar>{

  @override
  void initState(){
    super.initState();
  }
  int myindex = 1;
  List pages  =
  [
    post(),
    Dashboard(),
    History(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.teal,
        height: 50,
        animationCurve: Curves.linearToEaseOut,
        index: 1,
        items: <Widget>[
          Icon(Icons.add, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
      ),
      body: pages[myindex],
    );
  }
}