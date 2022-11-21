import 'package:flutter/material.dart';
import 'package:testappforlogin/login.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: ElevatedButton(child: Text('signout'),onPressed: (){
       Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LoginDemo()));
    },),);
  }
}