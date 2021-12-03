import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class post extends StatefulWidget{
  _State createState()=> _State();
}

class _State  extends State<post>{

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Post')),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Fluttertoast.showToast(
                msg: "Post is here",
                toastLength: Toast.LENGTH_LONG,
                gravity: ToastGravity.CENTER_RIGHT,
                timeInSecForIosWeb: 10,
                backgroundColor: Colors.grey,
                textColor: Colors.white,
                webShowClose: true,
                fontSize: 16.0
            );
          },
          child: Text('Show Toast Below'),
        ),
      ),
    );
  }
}