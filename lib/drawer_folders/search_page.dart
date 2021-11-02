import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// Widget event_page extends StatefulWidget(){
//   bdState createState() => bdState();
// }
Widget search_page(){

  String asset_bear = "assets/bear.jpg";
  List<String> names = <String>[
    'Bear',
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
    'Dear',
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
    "assets/deer.jpg",
    "assets/turtle.jpg",
    "assets/tiger.jpg",
    "assets/giraffe.jpg",
    "assets/puppies.jpg",
    "assets/raccons.jpg",
    "assets/zebra.jpg",
    "assets/peril.jpg",
    "assets/lion.jpg",
    "assets/fox.jpg",
    "assets/dear.jpg",
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
        title: Text('Animals',),
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
      body: ListView.builder(

        itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            child: Column(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 8),
                    // decoration: BoxDecoration(
                      // color: Colors.green,
                      // border: Border.all(
                      //   color: Colors.black,
                      //   width: 2,
                      // ),
                    // ),
                    height: 255,
                    width: double.infinity,
                    child: Card(
                      elevation: 20,
                        color: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                        child: Column(
                          children: [
                            Row(

                              // mainAxisAlignment: MainAxisAlignment.center,
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  flex: 4,

                                  child: Container(

                                    // margin: EdgeInsets.all(5),
                                    height: 223,
                                    // width: double.infinity,
                                    child: Center(
                                      child: Image.asset("${images[index]}"),
                                      // child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"),
                                    ),
                                  ),

                                ),
                                Expanded(
                                  flex:1,
                                  child: Container(
                                      margin: EdgeInsets.only(top: 25),
                                      child: SingleChildScrollView(
                                        child: Container(
                                          margin: EdgeInsets.all(5),
                                          // height: 150,
                                          // width: 400,
                                          // padding: EdgeInsets.only(top: 15),
                                          child: Center(
                                            child: Text("${names[index]} ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                                          ),
                                        ),
                                      )
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Text("Hello Friends!!! I am  ${names[index]}", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                            ),
                          ],
                        ),
                    )
                ),
              ],
            ),
          );
        },
      )
  );
}
