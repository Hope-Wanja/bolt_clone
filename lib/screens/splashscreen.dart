import 'dart:async';

import 'package:bolt_clone/screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
  super.initState();
  Timer(const Duration(seconds: 3), () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context)=> const Login())));
  });
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
              SizedBox(
                width: 1500,
                height: 400,
                child:  Image.asset(
              'assets/images/17629097_ThanitJuly_42.jpg',
                fit: BoxFit.cover,
              ),),
              const SizedBox(height: 20,),
              const CircularProgressIndicator(),
           ],
            ),
  
        )
      );
  }
  }
