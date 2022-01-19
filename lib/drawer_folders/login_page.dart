import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'common_class.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

// void main() async{
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MaterialApp(
//     home: login_page(),
//   ));
// }
class login_page extends StatefulWidget{
  _statee createState() => _statee();
}


class _statee extends State<login_page>{
  Future createUser(String email, String password) async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Common().customtoast("Please provide correct Email Address and Password");
    } on FirebaseAuthException catch (e){
      if(e.code == 'weak-password'){
        Common().customtoast("The password provided is too weak.");
      }else if(e.code == 'emai"l-already-in-use'){
        Common().customtoast("The account already exists for that email.");
      }
    } catch(e){
      print(e);
      Common().customtoast(e.toString());
    }

  }
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context){

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  labelText: 'Email Address'
                ),
              ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
                  labelText: 'Password'
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: ElevatedButton(
                onPressed: (){
                  createUser(emailController.text, passwordController.text);
                },
                child: Text("Log In"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}