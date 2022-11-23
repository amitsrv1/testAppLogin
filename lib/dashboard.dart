import 'package:flutter/material.dart';
import 'package:testappforlogin/dto/UserLoginDto/storage.dart';
import 'package:testappforlogin/login.dart';

class Dashboard extends StatelessWidget {
   Dashboard({super.key});

  String first_name = "";
  init(){
     first_name = userDataInformation.read('firstname');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(first_name),
        Container(child: ElevatedButton(child: Text('signout'),onPressed: (){
           Navigator.push(context,
                              MaterialPageRoute(builder: (_) => LoginDemo()));
        },
        ),
        ),
      ],
    );
  }
}