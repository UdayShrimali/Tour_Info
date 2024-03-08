import 'package:flutter/material.dart';

class HelpCenter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(
      title: Text('Help Center',style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
    ),
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            maxLines: 10,
            // obscureText: true,
            // style: TextStyle(fontSize: 40),
            decoration: InputDecoration(
              // labelStyle: TextStyle(fontSize: 20),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black),),
              // labelText: 'Please Enter Your Query or Feedback',
              hintText: 'Please Enter Your Query or Feedback'


            ),
          ),
        ),
        Padding(padding: EdgeInsets.all(15.0),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5),borderSide: BorderSide(color: Colors.black),),
            labelText: 'Please Enter Your Email Address'
          ),
        ),),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ElevatedButton(onPressed: (){}, child: Text('Submit',style: TextStyle(fontSize: 25,color: Colors.black),)),
        )
      ],
    ),

  );
  }

}