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
          title: Text('title'),
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
