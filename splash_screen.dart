import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tour_info/main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: 'Home Page',),));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Container(height: 180,
         width: 230,
         decoration: BoxDecoration(
         shape: BoxShape.circle,
           gradient: RadialGradient(colors: [Colors.red,Colors.black],stops: [0.0,0.9],),
         ),
         // color: Colors.black,
         child: Container(height: 150,
             width: 100,
             child: CircleAvatar(child: Center(
               child: Text('TOUR INFO',style: TextStyle(fontWeight: FontWeight.bold,fontSize:25,color: Colors.white,),
               ),
             ),
               backgroundColor: Colors.transparent,
             )
         ),
       ),
     ),
   );
  }
}