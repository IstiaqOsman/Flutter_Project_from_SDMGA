import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget community_page(){
  String img = "assets/beauty.jpeg";
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 60),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Center(
            child: Container(
                height: 375,
                width: 250,
                child: Image.asset(img)
            ),
          ),
          Container(
              margin: EdgeInsets.all(2),
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 160,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    size: 50,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Home',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){},)
                  ),
                  Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 160,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.tour,
                                    size: 50,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Tour',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){},
                      )
                  ),
                ],
              )
          ),
          Center(
            child: Container(
                height: 375,
                width: 250,
                child: Image.asset(img)
            ),
          ),
          Container(
              margin: EdgeInsets.all(2),
              height: 200,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      child: Container(
                        padding: EdgeInsets.all(3),
                        height: 160,
                        child: Card(
                          shadowColor: Colors.red,
                          elevation: 10,
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.hotel,
                                  size: 50,
                                ),
                                Divider(
                                  color: Colors.red,
                                ),
                                Text('Hotels',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ),
                      onPressed: (){},
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Container(
                          padding: EdgeInsets.all(3),
                          height: 160,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.contacts,
                                    size: 50,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Contact Us',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){},
                      )
                  ),
                ],
              )
          ),
        ],
      ),
    ),
  );
}