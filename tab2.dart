import 'package:flutter/material.dart';
import 'package:tour_info/homescreen.dart';
import 'package:tour_info/mumbai/mumbaihome.dart';

class Tab2 extends StatefulWidget{
  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Padding(
       padding: EdgeInsets.only(top: 70,left: 0.0),
       child: Column(
         children: [
           Padding(
             padding: EdgeInsets.only(top: 10,left: 0.0,right: 0.0,bottom: 10),
             child: TextField(
               style: TextStyle(fontSize: 5),
               decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                 labelText: 'Enter First Name',
                 // hintText: 'Enter Your Name',
               ),
             ),
           ),
           Padding(
             padding: EdgeInsets.only(right: 0.0,left: 0.0,bottom: 10),
             child: TextField(
               obscureText: true,
               style: TextStyle(fontSize: 5),
               decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.pink)),
                 labelText: 'Enter Last Name',
                 // hintText: 'Enter Password',
               ),

             ),
           ),
           Padding(
             padding: EdgeInsets.only(right: 0.0,left: 0.0,bottom: 10),
             child: TextField(
               obscureText: true,
               style: TextStyle(fontSize: 5),
               decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.pink)),
                 labelText: 'Enter Email Id',
                 // hintText: 'Enter Password',
               ),

             ),
           ),
           Padding(
             padding: EdgeInsets.only(right: 0.0,left: 0.0,bottom: 10),
             child: TextField(
               obscureText: true,
               style: TextStyle(fontSize: 5),
               decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                 labelText: 'Enter Password',
                 // hintText: 'Enter Password',
               ),

             ),
           ),
           Padding(
             padding: EdgeInsets.only(right: 0.0,left: 0.0),
             child: TextField(
               obscureText: true,
               style: TextStyle(fontSize: 5),
               decoration: InputDecoration(
                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Colors.pink)),
                 labelText: 'Enter Phone Number',
                 // hintText: 'Enter Password',
               ),

             ),
           ),

           Padding(
             padding: const EdgeInsets.only(top: 30,),
             child: ElevatedButton(
               // textColor: Colors.white,
               // color: Colors.blue,
               child: Text('Sign Up',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black)),
               onPressed: (){

               },
             ),

           ),
           Padding(padding: const EdgeInsets.only(top: 40),child: Text('OR',textAlign: TextAlign.center, style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,),
           ),),
           Row(
             children: [
               Expanded(
                   child: Image.asset('assets/images/facebook.jpg')
               ),
               Expanded(
                   child: Image.asset('assets/images/google.jpg')

               ),
               Expanded(
                   child: Image.asset('assets/images/linkedin.png')
               ),
             ],
           ),
         ],
       ),

     ),
   );
  }
}