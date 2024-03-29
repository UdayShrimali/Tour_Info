import 'package:flutter/material.dart';
import 'package:tour_info/Madhya%20Pardesh.dart';
import 'package:tour_info/Uttar%20Pradesh.dart';
import 'package:tour_info/delhihome.dart';
import 'package:tour_info/goa.dart';
import 'package:tour_info/helpcenter.dart';
import 'package:tour_info/jaipur.dart';
import 'package:tour_info/main.dart';
import 'package:tour_info/mumbaihome.dart';
import 'package:tour_info/setting.dart';
import 'package:tour_info/share.dart';



class Home extends StatefulWidget {
  @override
State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchController = TextEditingController();

  final  List img = [
    'Mumbai','New Delhi','Uttar Pradesh','Madhya Pradesh','Goa','Jaipur','Hydrabad','Kolkata','Tamil Naddu','Gujrat','Jammu & Kashmir','Meghalaya','Oddisha','Jharakhand','Bihar','Punjab','Assam','Nagaland',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.yellow.shade100,
        title: Padding(
          padding: const EdgeInsets.only(left: 60),
          child: Text('TOUR INFO',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              // Add padding around the search bar
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              // Use a Material design search bar
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  hintText: 'Please Enter The City',
                  // Add a clear button to the search bar
                  suffixIcon: IconButton(
                    icon: Icon(Icons.clear,color: Colors.black,),
                    onPressed: () => _searchController.clear(),
                  ),
                  // Add a search icon or button to the search bar
                  prefixIcon: IconButton(
                    icon: Icon(Icons.search,color: Colors.black),
                    onPressed: () {
                      // Perform the search here
                    },
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height:20 ,),
            GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: (153 / 145 ),
              children: [
                for(int i = 0; i < img.length; i++)
                  Container(
                    padding: EdgeInsets.symmetric(vertical:5,horizontal: 10),
                    margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        //color: Color(0xff212325),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.yellow.shade100.withOpacity(0.1),
                              spreadRadius: 0.5,
                              blurRadius: 2
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: (){
                            if( i == 0) {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => Mumtab()));
                            }else if(i == 1){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => DelhiHome()));
                            }else if(i == 2){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => UpHome()));
                            }else if(i == 3){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) =>MpHome()));
                            }else if(i == 4){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => GoaHome()));
                            }else if(i == 5){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => JiapurHome()));
                            }else if(i == 6){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 7){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 8){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 9){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 10){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 11){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 12){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 13){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 14){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 15){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 16){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i == 17){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            }else if(i ==  18){
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => MyHomePage()));
                            };
                          },
                          splashColor: Colors.grey,
                          child: Container(
                            //margin: EdgeInsets.all(5),
                            child: Image.asset('assets/images/${img[i]}.png',
                              fit: BoxFit.cover,
                            ),
                          ),

                        ),
                        Padding(padding: EdgeInsets.only(top: 6),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              img[i],style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          children: <Widget>[
            DrawerHeader(
              child: Container(
                // height: 600,
                color: Colors.yellowAccent,
                child:Card(
                    shape: CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    elevation: 3,
                    child: Image.asset('assets/images/main.jpg',fit: BoxFit.cover,
                    )),
              ),),
            ListTile(
              leading: Icon(Icons.home,color: Colors.black,),
              title: Text("Home",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold),),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },
            ),const Divider(height: 0),
            ListTile(
              leading: Icon(Icons.settings,color: Colors.black,),
              title: Text("Settings",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Setting()));
              },
            ),const Divider(height: 0),
            ListTile(
              leading: Icon(Icons.help_outline,color: Colors.black,),
              title: Text("Help Center",style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpCenter()));
              },
            ),const Divider(height: 0),
            ListTile(
              leading: Icon(Icons.share,color: Colors.black,),
              title: Text('Share',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Share()));
              }
            ),const Divider(height: 0),
            ListTile(
              leading: Icon(Icons.logout_sharp,color: Colors.black,),
              title: Text('Logout',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
              onTap: () => null,
            ),
          ],
        ),
      ),
    );
  }
}
