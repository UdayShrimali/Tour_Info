import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tour_info/homescreen.dart';

class Setting extends StatefulWidget{

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool switchValue1 = true;
  bool switchValue2 = true;
  bool switchValue3 = true;
  bool switchValue4 = true;
  bool switchValue5 = true;
  bool switchValue6 = true;
  bool switchValue7 = true;
  bool switchValue8 = true;


  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor: Colors.white,
     appBar: AppBar(
       leading: SizedBox.fromSize(
         size: Size(56, 56),
         child: ClipOval(
           child: Material(

             child: InkWell(
               splashColor: Colors.black,
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
               },
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Icon(Icons.menu,size: 37,),

                 ],
               ),
             ),
           ),
         ),
       )

     ),
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Padding(
           padding: const EdgeInsets.only(left: 10),
           child: Text('Settings',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
         ),
         // ListTile(
         //    title: Text('Push Notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14),),
         //   subtitle: Text('Receive push notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),

         // )
         SwitchListTile(
           value: switchValue1,
           onChanged: (bool? value) {
             setState(() {
               switchValue1 = value!;
             });
           },
           title: const Text('Push Notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text('Receive push notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
         ),
         // const Divider(height: 0),
         SwitchListTile(
           value: switchValue2,
           onChanged: (bool? value) {
             setState(() {
               switchValue2 = value!;
             });
           },
           title: const Text('Email Notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text(
               'Receive weekly email notifications',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
         ),
         // const Divider(height: 0),
         SwitchListTile(
           value: switchValue3,
           onChanged: (bool? value) {
             setState(() {
               switchValue3 = value!;
             });
           },
           title: const Text('Dark Mode',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text(
               "Dark mode interface",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
           isThreeLine: true,
         ),
         // const Divider(height: 0),
         SwitchListTile(
           value: switchValue4,
           onChanged: (bool? value) {
             setState(() {
               switchValue4 = value!;
             });
           },
           title: const Text('Data-saving mode',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text('Images loaded at the best resolution',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
         ),
         // const Divider(height: 0),
         SwitchListTile(
           value: switchValue5,
           onChanged: (bool? value) {
             setState(() {
               switchValue5 = value!;
             });
           },
           title: const Text('Save to Google Drive',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text(
               'Save all files to Google Drive',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
         ),
         // const Divider(height: 0),
         SwitchListTile(
           value: switchValue6,
           onChanged: (bool? value) {
             setState(() {
               switchValue6 = value!;
             });
           },
           title: const Text('Clear cache',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text(
               "Delete all files stored in cache",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
           isThreeLine: true,
         ),
         SwitchListTile(
           value: switchValue7,
           onChanged: (bool? value) {
             setState(() {
               switchValue7 = value!;
             });
           },
           title: const Text('Security status',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text('System updates and security',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
         ),
         // const Divider(height: 0),
         SwitchListTile(
           value: switchValue2,
           onChanged: (bool? value) {
             setState(() {
               switchValue2 = value!;
             });
           },
           title: const Text('Password & security',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),
           subtitle: const Text(
               'Biometric, fingerprint & screen lock',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 12)),
         ),
         // const Divider(height: 0),
Padding(
  padding: const EdgeInsets.only(left: 150,top: 35),
  child: ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
    primary: Colors.blue, // Background color of the button
    // onPrimary: Colors.white, // Text color
    ),child: Text('Save',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.white),)),
)

       ],

     ),

   );
  }
}