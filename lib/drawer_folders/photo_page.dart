import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget photo_page(){
  String img = "assets/beauty.jpeg";
  return SingleChildScrollView(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 60),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            height: 30,
            child: Text('Pictures of this Flutter App', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Container(
                          margin: EdgeInsets.all(5),
                          height: 375,
                          width: 250,
                          child: Image.asset(img)
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Container(

                          margin: EdgeInsets.all(5),
                          height: 375,
                          width: 250,
                          child: Image.asset(img)
                      ),
                    ),
                  )
              ),
              // Center(
              //   child: Container(
              //       height: 375,
              //       width: 250,
              //       child: Image.asset(img)
              //   ),
              // ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 30,
            child: Text('Pictures of this Flutter App', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Container(
                          margin: EdgeInsets.all(5),
                          height: 375,
                          width: 250,
                          child: Image.asset(img)
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Container(

                          margin: EdgeInsets.all(5),
                          height: 375,
                          width: 250,
                          child: Image.asset(img)
                      ),
                    ),
                  )
              ),
              // Center(
              //   child: Container(
              //       height: 375,
              //       width: 250,
              //       child: Image.asset(img)
              //   ),
              // ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: 30,
            child: Text('Pictures of this Flutter App', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Container(
                          margin: EdgeInsets.all(5),
                          height: 375,
                          width: 250,
                          child: Image.asset(img)
                      ),
                    ),
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Center(
                      child: Container(
                          margin: EdgeInsets.all(5),
                          height: 315,
                          width: 250,
                          child: Image.asset(img)
                      ),
                    ),
                  )
              ),
              // Center(
              //   child: Container(
              //       height: 375,
              //       width: 250,
              //       child: Image.asset(img)
              //   ),
              // ),
            ],
          )
        ],
      ),
    ),
  );
}