import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tabBarList extends StatefulWidget {
  @override
  tabState createState() => tabState();
}

class tabState extends State<tabBarList> {
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
    'Fox'
  ];
  List<int> nameCount = <int>[2, 0, 10, 6, 52, 4, 0, 2, 4, 0, 2, 5, 3, 5, 7];
  List<String> icons = <String>[
    'home',
    'face',
    'flag',
    'facebook',
    'wallpaper',
    'warning',
    'watch',
    'wash',
    'water',
    'dashboard'
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          // String x = "{$icons[index]}";
          return Container(
            height: 50,
            margin: EdgeInsets.all(2),
            child: ListTile(
              // String x = "{$icons[index]}",
              title: Text(
                '${names[index]} (${nameCount[index]})',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              leading: Image.asset("${images[index]}"),
              // contentPadding: EdgeInsets.all(3),
              dense: false,
              tileColor: Colors.grey,
              // selected: false,
              // selectedTileColor: Colors.yellow,
              // leading: Icon(Icons.home),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("The name is ${names[index]}"),
                  duration: Duration(milliseconds: 1000),
                ));
              },
              // Icon(Icons.dashboard),
            ),
          );
        },
      ),
    );
  }
}
