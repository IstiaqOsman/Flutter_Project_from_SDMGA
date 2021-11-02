import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// Widget event_page extends StatefulWidget(){
//   bdState createState() => bdState();
// }
Widget event_page(){

  List<String> names = <String>[
    'Bear', 'Dear', 'Deer', 'Turtle', 'Tiger', 'Giraffe', 'Puppies', 'Raccons', 'Zebra', 'Peril', 'Lion', 'Fox'
  ];
  List<int> nameCount = <int>[
    2,0,10,6,52,4,0,2,4,0,2,5,3,5,7
  ];
  List<String> icons = <String>[
    'home', 'face', 'flag', 'facebook','wallpaper','warning','watch','wash','water','dashboard'
  ];
  List<String> images = <String>[
    "assets/bear.jpg",
    "assets/dear.jpg",
    "assets/deer.jpg",
    "assets/turtle.jpg",
    "assets/tiger.jpg",
    "assets/giraffe.jpg",
    "assets/puppies.jpg",
    "assets/raccons.jpg",
    "assets/zebra.jpg",
    "assets/peril.jpg",
    "assets/lion.jpg",
    "assets/fox.jpg"
  ];

    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: (){
        //
        //   },
        //   icon: const Icon(Icons.menu),
        //   // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip, icon: const Icon(Icons.menu),onPressed: (){},
        // ),
        title: Text('AppBar',),
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
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.all(8),
            itemCount: names.length,
            itemBuilder: (BuildContext context,int index){
            // String x = "{$icons[index]}";
            return Container(
              height: 50,
                margin: EdgeInsets.all(2),
              child: ListTile(
                // String x = "{$icons[index]}",
                title: Text('${names[index]} (${nameCount[index]})', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                leading: Image.asset("${images[index]}"),
                // contentPadding: EdgeInsets.all(3),
                dense: false,
                tileColor: Colors.grey,
                // selected: false,
                // selectedTileColor: Colors.yellow,
                // leading: Icon(Icons.home),
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("The name is ${names[index]}"),
                      duration: Duration(milliseconds: 1000),
                    )
                  ); 
                },
                // Icon(Icons.dashboard),
              ),
            );
            },
        ),
      ),
    );

}