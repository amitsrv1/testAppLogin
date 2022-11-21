import 'package:flutter/material.dart';
import 'package:testappforlogin/Invalid_credentials.dart';
import 'package:testappforlogin/dashboard.dart';
import 'package:get/get.dart';
import 'package:testappforlogin/dto/UserLoginDto/controller.dart';

final userNameInputController = TextEditingController();
final passwordInputController = TextEditingController();

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: userNameInputController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'username',
                      hintText: 'Enter valid username'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                //padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  controller: passwordInputController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),
                ),
              ),
             
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue, borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      APIService.userLoginApi(userNameInputController.text,
                              passwordInputController.text)
                          .then((value) {
                        if (value.status == 400) {
                           print('failed');
                           Navigator.push(context,
                              MaterialPageRoute(builder: (_) => InvalidCredentials()));
                         
                        } else {
                         
                           Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Dashboard()));
                        }
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
             
            ],
          ),
        
      ),
    );
  }
}
