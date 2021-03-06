import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/drawer_folders/posts.dart';

Future createPost(String url, {required Map body}) async {
  return http.post(Uri.parse(url),body: body).then((http.Response response){
    if(response.statusCode == 201){
      return Post.fromJson(json.decode(response.body));
    }
    else{
      print("errror while push");
      throw Exception("Error while fetching data");
    }
  });
}
class post_product extends StatelessWidget{
  late final Future post;
  static final CREATE_POST_URL = 'https://jsonplaceholder.typicode.com/posts';
  TextEditingController titleController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController bodyController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Web Service",
      theme: ThemeData(
        primaryColor:  Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (){

              },
              icon: const Icon(Icons.menu),
              // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip, icon: const Icon(Icons.menu),onPressed: (){},
            ),
            title: Text('Create Post',),
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
        body: Container(
          margin: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Title",
                  labelText: "Post Title"
                )),
              SizedBox(
            height: 10,
          ),
              TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Email",
                      labelText: "Email Address"
                  )),
              SizedBox(
                height: 10,
              ),
              TextField(
                  controller: bodyController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Body",
                      labelText: "Post Body"
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async{
                  Post newPost= Post(
                    userId: '123',
                    id: 0,
                    title: titleController.text,
                    email: emailController.text,
                    body: bodyController.text);
                  Post p = await createPost(CREATE_POST_URL ,body: newPost.toMap());
                  print(p.title);
                  print(p.body);
                  print(p.email);
                },
                child: const Text('create'),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                    builder: (BuildContext builder){
                      return AlertDialog(
                        backgroundColor: Colors.teal,
                          title: Center(
                            child: Column(
                               children: [
                                 Text(titleController.text),
                                 Text(emailController.text),
                                 Text(bodyController.text),
                               ],
                            ),
                          ),
                        actions: [
                          Center(
                            child: TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },child: Text("ok...I like it!!!"),
                            ),
                          )
                        ],
                      );
                    },
                  );

                },
                child: Text("Alert Dialogue"),

              ),

            ],
          ),
        )
      )
    );
  }
}