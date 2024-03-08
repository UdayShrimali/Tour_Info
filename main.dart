import 'package:flutter/material.dart';
import 'package:tour_info/login.dart';
import 'package:tour_info/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       scaffoldBackgroundColor: Colors.black,


      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Stack(
        children: [ Padding(
      padding: const EdgeInsets.only(top: 200),
        child: Image.asset('assets/images/road.jpg'),),
        Center(child: Padding(
          padding: const EdgeInsets.only(top: 570),
          child: ElevatedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogonPage()));
          }, child: Text('Explore',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
        )),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Center(
          child:Text('Collect Moment Not Thing',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic,foreground: Paint()..shader=LinearGradient(colors: <Color>[Colors.pink,Colors.orange,Colors.teal],).createShader(Rect.fromLTRB(0.0, 0.0, 250.0, 100.0)
                )
                ),),



          ),
        ),
          Padding(
            padding: const EdgeInsets.only(bottom: 180),
            child: Center(child: Text('Welcome To Incredible \nIndia ',textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontStyle:FontStyle.normal,color: Colors.green,))),
          ),
          Container(

            child: Padding(
              padding: const EdgeInsets.only(left: 150,top: 130 ),
              child: Card(
                shape: CircleBorder(),
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Image.asset('assets/images/main.jpg',
                height: 120,
                width: 110,
                fit: BoxFit.cover,),

              )

            ),

          ),

        ],
      )


    );
  }
}

