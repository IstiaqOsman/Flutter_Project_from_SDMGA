import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget people_page(){
  String img = "assets/sheikh_hasina/sheikh_hasina.jpg";
  String img2 = "assets/sheikh_hasina/rohingya_shelter.jpg";
  String img3 = "assets/sheikh_hasina/padma_bridge.jpg";
  String img4 = "assets/sheikh_hasina/sh_university.jpg";

  return Scaffold(
      appBar: AppBar(
    // leading: IconButton(
    //   onPressed: (){
    //
    //   },
    //   icon: const Icon(Icons.menu),
    //   // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip, icon: const Icon(Icons.menu),onPressed: (){},
    // ),
        title: Text('AppBar'),
        actions: [
          IconButton(
              tooltip: 'Favourite', icon: const Icon(Icons.favorite,),onPressed: (){}
          ),
          IconButton(
              tooltip: 'Search', icon: const Icon(Icons.search,),onPressed: (){}
          ),
          PopupMenuButton<Text>(
              itemBuilder: (context){
                return [
                  PopupMenuItem(
                    child: Text('First One'),
                  ),
                  PopupMenuItem(
                    child: Text('Second One'),
                  ),
                  PopupMenuItem(
                    child: Text('Third One'),
                  ),
                ];
              })
        ],
    // title: Text('View'),
    // elevation: 10,
    // shadowColor: Colors.green,
  ),
      body: SingleChildScrollView(
      child: Container(
        height: 1200,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
          child: Container(
              height: 310,
              width: double.infinity,
              child: Center(
                  child: Image.asset(img, fit: BoxFit.cover))),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Image.asset(img2),
                        Text("Padma Bridge Project", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Image.asset(img3),
                        Text("Rohingya Shelter Project", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Image.asset(img4),
                        Text("Sheikh Hasina University", style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  )
  );
}