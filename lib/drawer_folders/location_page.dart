import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//
// Widget event_page extends StatefulWidget(){
//   bdState createState() => bdState();
// }
Widget location_page(){

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
                  margin: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  height: 200,
                  width: 450,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.all(5),
                          height: 250,
                          width: 400,
                          child: Center(
                            child: Image.asset("${images[index]}"),
                            // child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,"),
                          ),
                        ),
                      ),
                      Expanded(
                        flex:2,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              flex:1,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  boxShadow: [
                                    new BoxShadow(
                                      color: Colors.black,
                                      offset: new Offset(2.0,2.0),
                                    )
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 20),
                                width: 90,
                                child: Center(
                                  child: Text("Single N/AC",style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),),
                                ),
                              ),
                            ),
                            Expanded(
                              flex:2,
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
                            Expanded (
                              flex:2,
                              child: Container(
                                margin: EdgeInsets.only(top: 35, bottom: 5, right: 5),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.green,
                                        offset: new Offset(2.0,2.0),
                                      )
                                    ],
                                    border: Border.all(
                                      color: Colors.green,
                                    )
                                ),
                                child: FlatButton(
                                  onPressed: (){
                                    ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text("The name is ${names[index]}"),
                                          duration: Duration(milliseconds: 1000),
                                        )
                                    );
                                  },
                                  child: Center(
                                    child: Text("B O O K", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
                                  ),
                                )
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),
        );
      },
    )
  );
}
