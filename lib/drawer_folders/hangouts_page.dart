import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
// import 'blogList.dart';
// import 'datum/dummydata.dart';

// class bdtravel extends StatefulWidget {
//   bdState createState() => bdState();
// }
List<String> names = <String>[
  'Bear',
  'Dear',
  'Deer',
  'Turtle',
  'Tiger',
  'Giraffe',
  'Puppies',
  'Raccons',
  'Zebra',
  'Peril',
  'Lion',
  'Fox',
];
List<int> nameCount = <int>[
  2,
  0,
  10,
  6,
  52,
  4,
  0,
  2,
  4,
  0,
  2,
  5,
  3,
  5,
  7
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
  Widget hangouts_page() {
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
            padding: const EdgeInsets.all(8),
            // itemCount: titleref.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                // onTap: () {
                //   setState(() {
                //     // Navigator.of(context).push(MaterialPageRoute(builder: (context) => blogs()));
                //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                //       content: Text('${names[index]}'),
                //       duration: Duration(microseconds: 300),
                //     ));
                //   });
                // },
                child: Container(
                    height: 200,
                    margin: EdgeInsets.all(2),
                    child: Card(
                      elevation: 1,
                      shadowColor: Colors.blue,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Card(
                                elevation: 20,
                                shadowColor: Colors.green,
                                child: Image.asset(
                                  '${images[index]}',
                                  height: 180.0,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text('${names[index]}',style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )),
              );
            }),
      ),
    );
  }
