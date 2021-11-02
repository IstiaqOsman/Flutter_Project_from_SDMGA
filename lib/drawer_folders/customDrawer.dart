import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'profilepage.dart';
import 'home_page.dart';
// import 'login_register_page.dart';
import 'photo_page.dart';
import 'community_page.dart';
import 'hangouts_page.dart';
import 'location_page.dart';
import 'event_page.dart';
import 'search_page.dart';
import 'people_page.dart';
import 'Universal_Demo.dart';

Widget customDrawer(BuildContext context){
  return Container(
    color: Colors.yellowAccent,
    width: double.infinity,
      padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(top: 60),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.face, size: 60,color: Colors.blue,)
          ),
          ListTile(
            title: Text("Mohammad Istiaq Uddin", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red),),
          ),
          Card(
              borderOnForeground: true,
              child:
              ListTile(

                leading: Icon(Icons.home),
                title: Text('Home'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => home_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child:
              ListTile(
                leading: Icon(Icons.people),
                title: Text('People'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => people_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child:
              ListTile(
                leading: Icon(Icons.photo),
                title: Text('Photo'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => photo_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child:
              ListTile(
                leading: Icon(Icons.commute),
                title: Text('Communities'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => community_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child: ListTile(
                leading: Icon(Icons.my_location_outlined),
                title: Text('Location'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => location_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child:ListTile(
                leading: Icon(Icons.message),
                title: Text('Hangouts'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => hangouts_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child: ListTile(
                leading: Icon(Icons.event),
                title: Text('Events'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => event_page()));
                },
              ),
          ),
          Card(
              borderOnForeground: true,
              child: ListTile(
                leading: Icon(Icons.search),
                title: Text('Search'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => search_page()));
                },
              ),
          ),
          // Card(
          //   borderOnForeground: true,
          //   // child: ListTile(
          //   //   leading: Icon(Icons.account_box_rounded),
          //   //   title: Text('Login / Register'),
          //   //   onTap: (){
          //   //     Navigator.of(context).push(MaterialPageRoute(builder: (context) => login_register_page()));
          //   //   },
          //   // ),
          // ),
        ],
      ),
  );
}
