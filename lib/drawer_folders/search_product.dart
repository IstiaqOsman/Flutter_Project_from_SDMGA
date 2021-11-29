import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'demodata.dart';

class search_product extends StatefulWidget{
  _State createState() => _State();
}
class _State extends State<search_product>{
  final List<Map<String, dynamic>> duplicateUsers = productList;
  List<Map<String, dynamic>> copyUsers = [];

  // @override
  void initState(){
    copyUsers = duplicateUsers;
    // initState();
  }
  void searchUser(String query){
    List<Map<String,dynamic>> similarUsers=[];
    if(query.isEmpty){
      similarUsers = duplicateUsers;
    }
    else{
      similarUsers = duplicateUsers.where((element) => element['name'].toLowerCase().contains(query.toLowerCase())).toList();
      // similarUsers = duplicateUsers.where((element) => element['name'].toLowerCase().contains(query.toLowerCase())).toList();
    }
      setState((){
      copyUsers = similarUsers;
    });
    copyUsers = similarUsers;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(5),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Search'
                      ),
                      onChanged: (myquery) => searchUser(myquery),
                    ),
                    Container(
                      height: 1000,
                      width: double.infinity,
                      child: copyUsers.isNotEmpty ? ListView.builder(
                        itemCount: copyUsers.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 6,
                            child: Center(
                              child: ListTile(
                                // leading: Icon(Icons.home),
                                title: Text(copyUsers[index]['name']),
                              ),
                            ),
                          );
                        },
                      ):Center(child: Text('Opps No Users', style: TextStyle(fontSize: 20),)),
                    )
                  ],
                ),
              ),
            ),
          )
      );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text('Search Page'),
    //   ),
    //   body: Column(
    //     children: [
    //       Text("Hello world")
    //     ],
    //   ),
    // );
  }
}