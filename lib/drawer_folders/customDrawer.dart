import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/drawer_folders/ui/curved_n_bar.dart';
// import 'profilepage.dart';
import 'home_page.dart';
// import 'login_register_page.dart';
import 'photo_page.dart';
import 'community_page.dart';
import 'hangouts_page.dart';
import 'location_page.dart';
import 'event_page.dart';
import 'people_page.dart';
import 'gridview_builder.dart';
import 'search_product.dart';
import 'get_product.dart';
import 'post_product.dart';
import 'input_type/input_type.dart';
import 'bottom_sheet.dart';
import 'login_page.dart';

Widget customDrawer(BuildContext context){
  return SingleChildScrollView(
    child: Container(
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
                leading: Icon(Icons.account_box_rounded),
                title: Text('Grid View Builder'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => gridview_builder()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:ListTile(
                leading: Icon(Icons.search),
                title: Text('Search Product'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => search_product()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:ListTile(
                leading: Icon(Icons.search),
                title: Text('Get Product'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => get_product()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:ListTile(
                leading: Icon(Icons.search),
                title: Text('Post Product'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => post_product()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:ListTile(
                leading: Icon(Icons.search),
                title: Text('Validating Input'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => input_type()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:ListTile(
                leading: Icon(Icons.search),
                title: Text('Bottom Sheet Example'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => bottom_sheet()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Curved Navigation Bar'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => curved_n_bar()));
                },
              ),
            ),
            Card(
              borderOnForeground: true,
              child:
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Log In'),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => login_page()));
                },
              ),
            ),
          ],
        ),
    ),
  );
}
