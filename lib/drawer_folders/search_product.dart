import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'demodata.dart';

Widget search_product(){
  final List<Map<String, dynamic>> duplicateUsers = productList;
  List<Map<String, dynamic>> copyUsers=[];

  @override
  void initState(){
    copyUsers = duplicateUsers;
    initState();
  }
  void searchUser(String myquery){
    List<Map<String,dynamic>> similarUsers=[];
    if(myquery.isEmpty){
      similarUsers = duplicateUsers;
    }
    else{
      similarUsers = duplicateUsers.where((element) => element['name'].toLowerCase().contains(myquery.toLowerCase())).toList();
    }
    //   setState((){
    //   copyUsers = similarUsers;
    // });
    copyUsers = similarUsers;
  }
  return Scaffold(
    appBar: AppBar(),
    body: Padding(
      padding: EdgeInsets.all(5),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Search'
            ),
            onChanged: (demodata)=>searchUser(demodata),
          ),
          Container(
            height: 400,
            width: double.infinity,
            child: copyUsers.isNotEmpty ? ListView.builder(
              itemCount: copyUsers.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 6,
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(copyUsers[index]['name']),
                    ),
                  ),
                );
              },
            ):Center(child: Text('Opps No Users', style: TextStyle(fontSize: 45),)),
          )
        ],
      ),
    )
  );

}