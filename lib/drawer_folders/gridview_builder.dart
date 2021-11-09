import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/drawer_folders/demodata.dart';

Widget gridview_builder(){
  String img = "assets/beauty.jpeg";
  String msg = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
      "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
      "when an unknown printer took a galley of type and scrambled it to make a type specimen book. "
      "software like Aldus PageMaker including versions of Lorem Ipsum.";
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
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        ),
        itemCount: productList.length,
        itemBuilder: (context,index){
            return Container(
              child: Card(
                elevation: 10,
                shadowColor: Colors.red,
                child: Column(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Stack(
                        children: [
                          Image.network(productList[index]['image'],width: double.infinity,fit: BoxFit.contain,),
                          Positioned(
                            top: 10,
                            right: 10,
                            child: Container(
                              height: 20,
                              width: 30,
                              color: Colors.deepOrange,child: Text(productList[index]['rate'])
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                    flex:1,
                    child: Center(
                      child: Text(productList[index]['name']),
                    ),
                  ),
                  ],
                ),
              ),
            );
        },
      ),
  );
}
