import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async' show Future;
import 'dart:convert';
import 'package:http/http.dart' as http;

class get_product extends StatefulWidget {
  _state createState() => _state();
}

class _state extends State<get_product> {
  @override
  initState() {
    getAllphotos();
    super.initState();
  }

  List products = [];
  bool isloading = true;

  Future<String> getAllphotos() async {
    setState(() => this.isloading = true);
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    setState(() => products = json.decode(response.body.toString()));
    setState(() => this.isloading = false);
    return 'getting error';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // leading: IconButton(
          //   onPressed: (){
          //
          //   },
          //   icon: const Icon(Icons.menu),
          //   // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip, icon: const Icon(Icons.menu),onPressed: (){},
          // ),
          title: Text('Get Product',),
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
        body: this.isloading
            ? Center(
                child: CircularProgressIndicator(),
                heightFactor: 12.0,
              )
            : ListView.builder(
                itemCount: products == null ? 0 : products.length,
                itemBuilder: (ctx, ind) {
                  return Card(
                    child: Container(
                      height: 463,
                      width: double.infinity,
                      child: Column(children: [
                        Image.network(products[ind]['url']),
                        Text(products[ind]['title'],style: TextStyle(fontWeight: FontWeight.bold),),
                      ]),
                    ),
                  );
                }));
  }
}
