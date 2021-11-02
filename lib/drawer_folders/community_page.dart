import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/tab_bar/cardtabBar.dart';
import 'package:untitled/tab_bar/icontabBar.dart';
import 'package:untitled/tab_bar/tabBarList.dart';


  Widget community_page() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tabs Ex'),
          centerTitle: true,
          bottom: TabBar(
            //indicatorColor: Colors.amberAccent,
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: [
              Tab(
                icon: Icon(Icons.home),
              ),
              Tab(
                text: 'List',
              ),
              Tab(
                text: 'Card',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            icontabBar(),
            tabBarList(),
            cardtabBar(),
            // Put widgets here
          ],
        ),
      ),
    );
  }
