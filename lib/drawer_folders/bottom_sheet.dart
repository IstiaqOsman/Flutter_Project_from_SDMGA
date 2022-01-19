import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'home_page.dart';
class bottom_sheet extends StatefulWidget{
  __state createState() => __state();
}
class __state extends State<bottom_sheet> {
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
          title: Text('AppBar'),
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
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            children: [
              Container(
                height: 100,
                width: double.infinity,
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: GestureDetector(
                        onTap: () {
                          Fluttertoast.showToast(
                              msg: "Mohammad Istiaq Uddin",
                              toastLength: Toast.LENGTH_SHORT,
                              gravity: ToastGravity.CENTER_RIGHT,
                              timeInSecForIosWeb: 5,
                              backgroundColor: Colors.blue,
                              textColor: Colors.white,
                              fontSize: 20.0);
                        },
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(99.0),
                            child: Image.asset("assets/zebra.jpg"),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Mohammad Istiaq Uddin',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 25),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                // thickness of the line
                indent: 20,
                // empty space to the leading edge of divider.
                endIndent: 20,
                // empty space to the trailing edge of the divider.
                color:
                Colors.tealAccent,
                // The color to use when painting the line.
                height: 10, // The divider's height extent.
              ),
              Card(
                elevation: 1,
                child: ListTile(
                  title: Text('Bottom Sheet'),
                  leading: Icon(Icons.add_outlined),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    _show(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
void _show(BuildContext ctx) {
  showModalBottomSheet(
      isScrollControlled: true,
      elevation: 2,
      context: ctx,
      builder: (ctx) => Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('This is test bottom Sheet'),
                SizedBox(
                  height: 10,
                ),
                Text(
                    'We will use the dense property to make the text smaller. Setting this property to true will make the text small. By default the value is false.'),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(ctx);
                    Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => home_page()));

                  },
                  child: Text('Go Back to Home Page'),
                )
              ],
            ),
          ));
}
