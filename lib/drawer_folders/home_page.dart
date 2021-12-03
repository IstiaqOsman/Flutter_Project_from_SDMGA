import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget home_page(){
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
      body: SingleChildScrollView(
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      // margin: EdgeInsets.only(top: 60),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          // Center(
          //   child: Container(
          //       height: 375,
          //       width: 250,
          //       child: Image.asset(img)
          //   ),
          // ),

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
                          height: 120,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 10,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.home,
                                    size: 25,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Home',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
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
                          height: 120,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 5,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.tour,
                                    size: 25,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Tour',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        onPressed: (){},
                      )
                  ),
                  Expanded(
                    flex: 1,
                    child: FlatButton(
                      child: Container(
                        padding: EdgeInsets.all(3),
                        height: 120,
                        child: Card(
                          shadowColor: Colors.red,
                          elevation: 5,
                          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.green, width: 1)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.hotel,
                                  size: 25,
                                ),
                                Divider(
                                  color: Colors.red,
                                ),
                                Text('Hotels',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
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
                          height: 120,
                          child: Card(
                            shadowColor: Colors.red,
                            elevation: 5,
                            shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.green, width: 1)),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.contacts,
                                    size: 25,
                                  ),
                                  Divider(
                                    color: Colors.red,
                                  ),
                                  Text('Contact Us',style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
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
          Container(
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.all(10),
            // height: 250,
            child: Column(
              children: [
                Text('Flutter Practice Session', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                Text(msg, style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),),
              ],
            ),
          ),
          // Container(
          //     margin: EdgeInsets.all(2),
          //     height: 200,
          //     child: Row(
          //       children: <Widget>[
          //         Expanded(
          //           flex: 1,
          //           child: FlatButton(
          //             child: Container(
          //               padding: EdgeInsets.all(3),
          //               height: 160,
          //               child: Card(
          //                 shadowColor: Colors.red,
          //                 elevation: 10,
          //                 shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
          //                 child: Center(
          //                   child: Column(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     crossAxisAlignment: CrossAxisAlignment.center,
          //                     children: [
          //                       Icon(
          //                         Icons.hotel,
          //                         size: 50,
          //                       ),
          //                       Divider(
          //                         color: Colors.red,
          //                       ),
          //                       Text('Hotels',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             onPressed: (){},
          //           ),
          //         ),
          //         Expanded(
          //             flex: 1,
          //             child: FlatButton(
          //               child: Container(
          //                 padding: EdgeInsets.all(3),
          //                 height: 160,
          //                 child: Card(
          //                   shadowColor: Colors.red,
          //                   elevation: 10,
          //                   shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
          //                   child: Center(
          //                     child: Column(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       crossAxisAlignment: CrossAxisAlignment.center,
          //                       children: [
          //                         Icon(
          //                           Icons.contacts,
          //                           size: 50,
          //                         ),
          //                         Divider(
          //                           color: Colors.red,
          //                         ),
          //                         Text('Contact Us',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               onPressed: (){},
          //             )
          //         ),
          //         Expanded(
          //           flex: 1,
          //           child: FlatButton(
          //             child: Container(
          //               padding: EdgeInsets.all(3),
          //               height: 160,
          //               child: Card(
          //                 shadowColor: Colors.red,
          //                 elevation: 10,
          //                 shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
          //                 child: Center(
          //                   child: Column(
          //                     mainAxisAlignment: MainAxisAlignment.center,
          //                     crossAxisAlignment: CrossAxisAlignment.center,
          //                     children: [
          //                       Icon(
          //                         Icons.hotel,
          //                         size: 50,
          //                       ),
          //                       Divider(
          //                         color: Colors.red,
          //                       ),
          //                       Text('Hotels',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             onPressed: (){},
          //           ),
          //         ),
          //         Expanded(
          //             flex: 1,
          //             child: FlatButton(
          //               child: Container(
          //                 padding: EdgeInsets.all(3),
          //                 height: 160,
          //                 child: Card(
          //                   shadowColor: Colors.red,
          //                   elevation: 10,
          //                   shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.green, width: 1)),
          //                   child: Center(
          //                     child: Column(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       crossAxisAlignment: CrossAxisAlignment.center,
          //                       children: [
          //                         Icon(
          //                           Icons.contacts,
          //                           size: 50,
          //                         ),
          //                         Divider(
          //                           color: Colors.red,
          //                         ),
          //                         Text('Contact Us',style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),)
          //                       ],
          //                     ),
          //                   ),
          //                 ),
          //               ),
          //               onPressed: (){},
          //             )
          //         ),
          //       ],
          //     )
          // ),
          Center(
            child: Container(
                height: 375,
                width: 250,
                child: Image.asset(img)
            ),
          ),

        ],
      ),
    ),
  ));
}