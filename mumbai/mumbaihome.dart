import 'package:flutter/material.dart';
import 'package:tour_info/CST%20mumbai.dart';
import 'package:tour_info/goi.dart';

class Mumtab extends StatefulWidget {
  @override
  State<Mumtab> createState() => _MumtabState();
}

class _MumtabState extends State<Mumtab> {
  final  List img = [
    'Gateway of India','OST. Mumbai','Juhu Beach','Hanging Garden','Nehru Centre','Marine Drive','Chota Kashmir',
  ];
  final List names = ['Gateway of India','OST. Mumbai','Juhu Beach','Hanging Garden','Nehru Centre','Marine Drive','Chota Kashmir',];
  final List locations = ['Location:Apollo Bandar, Colab, Mumbai','Location:Chhatrapati Shivaji Terminus Area, Mumbai', 'Location:Juhu Tara Road, Andheri, Mumbai','Location:Simla Nagar, Malabar Hill, Mumbai','Location:Dr. Annie Besant Rd, Lotus Colony, Worl, Mumbai','Location:Netaji Subhash Chandra Bose Road, Chowpetty, Mumbai','Location:Aarey Milk Colony, Goregaon, Mumbai',];
  final List timings = ['Timings:24x7, every day','Timings:Every day', 'Timings:24 x 7; every day','Timings:05:00 am to 09:00 pm','Timings:11:00 am to 05:00 pm','Timings:24 x 7; every day','Timings:10:00 am to 06:00 pm',];

  // List<IconButton> ratingButtons = <IconButton>[];
  // for(int i = 0; i < img.length; i++),
  // final List<Map<String, dynamic>> attractions = [
  //   {
  //     'name': 'Gateway of India',
  //     'location': 'Location:Apollo Bandar, Colab, Mumbai',
  //     'timings': 'Timings:24x7, every day',
  //   },
  //   {
  //
  //     'name': 'OST. Mumbai',
  //     'location': 'Location:Chhatrapati Shivaji Terminus Area, Mumbai',
  //     'timings': 'Timings:Every day',
  //   },
  //   {
  //
  //     'name': 'Juhu Beach',
  //     'location': 'Location:Juhu Tara Road, Andheri, Mumbai',
  //     'timings': 'Timings:24 x 7; every day',
  //   },
  //   {
  //
  //     'name': 'Hanging Garden',
  //     'location': 'Location:Simla Nagar, Malabar Hill, Mumbai',
  //     'timings': 'Timings:05:00 am to 09:00 pm',
  //   },
  //   {
  //
  //     'name': 'Nehru Centre',
  //     'location': 'Location:Dr. Annie Besant Rd, Lotus Colony, Worl, Mumbai',
  //     'timings': 'Timings:11:00 am to 05:00 pm',
  //   },
  //   {
  //
  //     'name': 'Marine Drive',
  //     'location': 'Location:Netaji Subhash Chandra Bose Road, Chowpetty, Mumbai',
  //     'timings': 'Timings:24 x 7; every day',
  //   },
  //   {
  //
  //     'name': 'Chota Kashmir',
  //     'location': 'Location:Aarey Milk Colony, Goregaon, Mumbai',
  //     'timings': 'Timings:10:00 am to 06:00 pm',
  //   },
  // ];
  // @override
  // void initState() {
  //   super.initState();
  //   for (int i = 0; i < 5; i++) {
  //     ratingButtons.add(
  //       IconButton(
  //         icon: Icon(
  //           i < 1 ? Icons.star_border : Icons.star,
  //           size: 20,
  //           color: Colors.red,
  //         ),
  //         onPressed: () {
  //           setState(() {
  //             // Handle rating here
  //           });
  //         },
  //         iconSize: 20,
  //       ),
  //     );
  //   }
  // }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text('Mumbai', textAlign: TextAlign.center,style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.black,
            fontSize: 27,
            fontStyle: FontStyle.italic),),
          backgroundColor: Colors.white,
        ),
        body:ListView(
          children: [
            // for(int i = 0; i < img.length; i++)
              for(int i = 0; i < names.length; i++)
            //     for(int i = 0; i < locations.length; i++)
              Container(
                padding: EdgeInsets.symmetric(vertical:5,horizontal: 10),
                margin: EdgeInsets.symmetric(vertical: 8,horizontal: 13),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  //color: Color(0xff212325),

                ),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: (){
    if( i == 0) {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => Goi()));
    }else if(i == 1){
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => CstMumbai()));
    }

                      },
                      splashColor: Colors.grey,
                      child: Card(
                        color: Colors.white,
                        // Define the shape of the card
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        // Define how the card's content should be clipped
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        // Define the child widget of the card
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            // Add padding around the row widget
                            Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Add an image widget to display an image
                                  Image.asset(
                              'assets/images/${img[i]}.png',
                                    fit: BoxFit.cover,

                                  ),
                                  // Add some spacing between the image and the text
                                  Container(width: 20),
                                  // Add an expanded widget to take up the remaining horizontal space
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        // Add some spacing between the top of the card and the title
                                        Container(height: 5),
                                        // Add a title widget
                                        Text(
                                          names[i],style: TextStyle(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w400,color: Colors.redAccent
                                        ),

                                        ),
                                        // Add some spacing between the title and the subtitle
                                        Container(height: 5),
                                        // Add a subtitle widget
                                        Text(
                                          locations[i],style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,fontStyle: FontStyle.normal
                                        ),

                                          ),

                                        // Add some spacing between the subtitle and the text
                                        Container(height: 5),
                                        Text(
                                          timings[i],style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                        ),

                                        ),
                                        Container(height: 5),
                                    Text(
                                      // ratingButtons[i] as String,
                                      ''
                                    ),Container(height: 5),
                                        // Add a text widget to display some text

                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),Padding(padding: EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          // Text(
                          //   names[i],style: TextStyle(
                          //     fontSize: 16,
                          //     fontWeight: FontWeight.bold
                          // ),
                          // ),
                        ],
                      ),
                    )

                  ],
                ),
              ),
          ],
        )
    );
  }
}