import 'package:flutter/material.dart';
import 'users.dart';
// import 'package:curved_navigation_bar/curved';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: input_type(),
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.lightBlue,
      accentColor: Colors.cyan,
      fontFamily: 'Georgia',
      textTheme: TextTheme(
        headline1: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
        headline6: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
        bodyText2: TextStyle(fontSize: 18.0, fontFamily: 'Hind'),
      ),
    ),
  ));
}
class input_type extends StatefulWidget{
  _State createState() => _State();
}
class _State extends State<input_type>{
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  @override
  Widget build(BuildContext context){
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
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                backgroundColor: Colors.blue,
                elevation: 10,
                content: Text(
                  "How May We assist you sir ?",
                  style: TextStyle(color: Colors.white),
                ),
                duration: Duration(seconds: 3),
              ),
            );
          });
        },
        child: Icon(Icons.help, size: 30)
      ),
      body: Form(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  controller: name,
                  cursorColor: Colors.white10,
                  decoration: InputDecoration(hintText: 'Name', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), errorBorder: OutlineInputBorder(), labelText: 'Name'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  controller: number,
                  cursorColor: Colors.white10,
                  decoration: InputDecoration(hintText: 'Number ', border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)), errorBorder: OutlineInputBorder(), labelText: 'Number'),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  color: Colors.teal,
                  child: ElevatedButton(
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      if (name.text.isEmpty || number.text.isEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.blue,
                            content: Text("All Fields should be filled up",
                              style: TextStyle(color: Colors.white),
                            ),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      } else if (name.text.length < 4) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.blue,
                            content: Text("Name Should be at least four character",
                                style: TextStyle(color: Colors.white)),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      } else if (number.text.length < 10 || number.text.length > 12) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.blue,
                            content: Text("Please type a number with 11 digit",
                                style: TextStyle(color: Colors.white)),
                            duration: Duration(seconds: 3),
                          ),
                        );
                      } else {
                        ///created a new method for user login
                        loginuser(name.text, number.text);
                      }
                    },
                  ),
                ),),
            ],
        ),
      ),

    );
  }

  void loginuser(String text, String text2) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Validation Successful"),
        duration: Duration(seconds: 3),
      ),
    );
  }
}

class Sorting extends StatefulWidget {
  _nState createState() => _nState();
}

class _nState extends State<Sorting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        padding: EdgeInsets.all(5),
        itemCount: data.length,
        itemBuilder: (ctx, i) {
          return Card(
            elevation: 5,
            child: ListTile(
              title: Text(data[i]['name']),
            ),
          );
        },
      ),
    );
  }
}