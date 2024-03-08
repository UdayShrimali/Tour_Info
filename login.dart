// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_info/tab1.dart';
import 'package:tour_info/tab2.dart';

class LogonPage extends StatefulWidget{
  const LogonPage({Key? key}):super(key: key);
  @override
  State<LogonPage> createState() => _LogonPageState();
}
@override
Widget build(BuildContext context) {
  return MaterialApp(



  );
}


class _LogonPageState extends State<LogonPage>
  with SingleTickerProviderStateMixin{
  late TabController tabController;

  @override
  void initState(){
  tabController=TabController(length: 2, vsync: this);
  super.initState();
  }

  @override
  void dispose(){
  tabController.dispose();
  super.dispose();
  }


  @override
  Widget build(BuildContext context) {
  return Scaffold(
  backgroundColor:Colors.white,
  appBar: AppBar(),
  body:SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
      children: [
      const SizedBox(height: 30),
      Container(
      width: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),

      borderRadius: BorderRadius.circular(30)
      ),
      child: Column(
      children: [
      Padding(padding: const EdgeInsets.all(5),
      child: TabBar(labelColor: Colors.white,unselectedLabelColor: Colors.black,indicator: BoxDecoration(
        color: Colors.blueAccent,
        borderRadius: BorderRadius.circular(20),
      ),controller: tabController,
          tabs: const [
        Tab(
      child: Text('Login',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      ),
            Tab(
              child: Text('Sign Up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),


      ]),)
      ],
      ),
      ),
        Expanded(child: TabBarView(
          controller: tabController,
          children: [
            Tab1(),
            Tab2()
          ],
        ))
      ],
      ),
    ),
  ),
  )

  );
  }
  }

