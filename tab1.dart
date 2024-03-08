import 'package:flutter/material.dart';
import 'package:tour_info/homescreen.dart';

class Tab1 extends StatefulWidget{
  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
          padding: EdgeInsets.only(top: 80,bottom: 50,left: 0.0),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10,left: 0.0,right: 0.0,bottom: 25),
                child: TextField(
                  style: TextStyle(fontSize: 5),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                    labelText: 'Enter Email or Username',
                    // hintText: 'Enter Your Name',
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
                    labelText: 'Enter Password',
                    // hintText: 'Enter Password',
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 190,top: 7),
                child: Text('Forget Password?'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80,),
                child: ElevatedButton(
                  // textColor: Colors.white,
                  // color: Colors.blue,
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // Background color of the button
                    // onPrimary: Colors.white, // Text color
                  ),
                  child: Text('Login',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white)),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                  },
                ),

              ),
             Padding(padding: const EdgeInsets.only(top: 30),child: Text('OR',textAlign: TextAlign.center, style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,),
             ),),
              Row(
                children: <Widget>[
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