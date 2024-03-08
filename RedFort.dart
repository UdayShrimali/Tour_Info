import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:carousel_pro/carousel_pro.dart';

// import 'package:carousel_pro/carousel_pro.dart';


class RedFort extends StatefulWidget{
  @override
  State<RedFort> createState() => _RedFortState();
}

class _RedFortState extends State<RedFort> {
  List<String> imageList = [
    'assets/images/Red Fort.png',
    'assets/images/Akshardham Temple.png',
    'assets/images/Juhu Beach.png'
  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Red Fort',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.deepPurple.shade500),
          ),
          actions: [Icon(FontAwesomeIcons.youtube,color: Colors.red,size: 30,),SizedBox(width: 10,),Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.location_on,size: 30,),
          )
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.all(15),
                  child: CarouselSlider.builder(
                    itemCount: imageList.length,
                    options: CarouselOptions(
                      enlargeCenterPage: true,
                      height: 300,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      reverse: false,
                      aspectRatio: 5.0,
                    ),
                    itemBuilder: (context, i, id){
                      return Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: Colors.white,)
                        ),
                        //ClipRRect for image border radius
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            imageList[i],
                            width: 800,
                            fit: BoxFit.cover,
                          ),

                        ),


                      );

                    },
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('The Red Fort Complex was built as the palace fort of Shahjahanabad – the new capital of the fifth Mughal Emperor of India, Shah Jahan. Named for its massive enclosing walls of red sandstone, it is adjacent to an older fort, the Salimgarh, built by Islam Shah Suri in 1546, with which it forms the Red Fort Complex. The private apartments consist of a row of pavilions connected by a continuous water channel, known as the Nahr-i-Behisht (Stream of Paradise). The Red Fort is considered to represent the zenith of Mughal creativity which, under the Shah Jahan, was brought to a new level of refinement. The planning of the palace is based on Islamic prototypes, but each pavilion reveals architectural elements typical of Mughal building, reflecting a fusion of Persian, Timurid and Hindu traditions The Red Fort’s innovative planning and architectural style, including the garden design, strongly influenced later buildings and gardens in Rajasthan, Delhi, Agra and further afield.\n\n This palace fortress is known as the Red Fort because of the red sandstone fabric of its rampart walls. The fort with its halls, palaces, pavilions and serene gardens was completed in 1648. Within the enclosure of the red fort are located many fairytale buildings. The Diwan-i-Khas (also known as Shah Mahal) and the Rang Mahal (also called Imtiyaz Mahal or palace of distinctions) are the two most conspicuous buildings inside the Red Fort. The Hall of Public Audience (Diwan-i- Aam) is another famous building within the Red Fort. Son-et-lumiere shows, tracing the history of the Mughal Empire in India, outlining their glory and the eventful causes for their downfall are held in the Red Fort every evening.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                )

              ],
            ),
          ],
        ),

      );
  }
}


// import 'package:flutter/material.dart';
// // import 'package:carousel_slider/carousel_slider.dart';
// // import 'package:carousel_pro/carousel_pro.dart';
//
// // import 'package:carousel_pro/carousel_pro.dart';
//
//
// class Akshardhamtemple extends StatefulWidget{
//   @override
//   State<Akshardhamtemple> createState() => _AkshardhamtempleState();
// }
//
// class _AkshardhamtempleState extends State<Akshardhamtemple> {
//   List<String> imageList = [
//     'assets/images/OST. Mumbai.png',
//     'assets/images/GOI Home.png',
//     'assets/images/Juhu Beach.png'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return
//       Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text('CST Mumbai',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.deepPurple.shade500),
//           ),
//
//         ),
//         body: Container(
//           height: 200,
//           width: double.infinity,
//           child: Center(child: Image.asset('assets/images/Akshardham Temple.png',fit: BoxFit.cover,)),
//         )
//         // ListView(
//         //   children: [
//         //     Column(
//         //       children: [
//         //         Container(
//         //           margin: EdgeInsets.all(15),
//         //           child: CarouselSlider.builder(
//         //             itemCount: imageList.length,
//         //             options: CarouselOptions(
//         //               enlargeCenterPage: true,
//         //               height: 300,
//         //               autoPlay: true,
//         //               autoPlayInterval: Duration(seconds: 3),
//         //               reverse: false,
//         //               aspectRatio: 5.0,
//         //             ),
//         //             itemBuilder: (context, i, id){
//         //               return Container(
//         //                 decoration: BoxDecoration(
//         //                     borderRadius: BorderRadius.circular(15),
//         //                     border: Border.all(color: Colors.white,)
//         //                 ),
//         //                 //ClipRRect for image border radius
//         //                 child: ClipRRect(
//         //                   borderRadius: BorderRadius.circular(15),
//         //                   child: Image.asset(
//         //                     imageList[i],
//         //                     width: 800,
//         //                     fit: BoxFit.cover,
//         //                   ),
//         //
//         //                 ),
//         //
//         //
//         //               );
//         //
//         //             },
//         //           ),
//         //
//         //         ),
//         //         Text('Chhatrapati Shivaji Terminus (CST), formerly known as Victoria Terminus (VT), is a UNESCO World Heritage Site and a historic railway station located in the heart of Mumbai. Built in 1888, the station is a grand reminder of the British Raj in India and still one of the most historical landmarks within the Central Business District of Mumbai. It has been a core witness to the city flourishing, businesses blooming, and the Indian film industry growing. It has seen the transition of Bombay to Mumbai. Let’s learn more about this historical gem.\n Designed by the British architect F. W. Stevens, CST is an outstanding example of Victorian Gothic Revival architecture in India, blended with themes deriving from Indian traditional architecture. The structure represents the heart of the mercantile facet of the city and also symbolizes the British Commonwealth. CST has been associated with Mumbai since time immemorial.\n In the past, ‘Bori Bandar’ station, located in Eastern Mumbai, was the main station for all commercial and trade activities in the city. In the 1850s, the Great Indian Peninsular Railway operated in this area, which gave it the name ‘Bori Bandar,’ starting its first rail service covering a total distance of 34 kilometers to Thane. It was during the British Rule that it was re-designed by F. W. Stevens, who named it Victoria Terminus (VT), after the then-reigning Queen Victoria.')
//         //
//         //       ],
//         //     ),
//         //   ],
//         // ),
//
//       );
//   }
// }
//
