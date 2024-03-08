import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:carousel_pro/carousel_pro.dart';

// import 'package:carousel_pro/carousel_pro.dart';


class Varanashi extends StatefulWidget{
  @override
  State<Varanashi> createState() => _VaranashiState();
}

class _VaranashiState extends State<Varanashi> {
  List<String> imageList = [
    'assets/images/Varanasi.png',
    'assets/images/Red Fort.png',
    'assets/images/Akshardham Temple.png',

  ];
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Varanasi',textAlign: TextAlign.center,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.deepPurple.shade500),
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Lying in the south of Uttar Pradesh, on the banks of the holy River Ganga, breathes Varanasi, which is believed  to be the  the oldest living city in the world. For centuries, the mystic of this place has been attracting pilgrims from across India as well as abroad. A dwelling of ancient domes, muths, ashrams, priests, narrow lanes with shops filled with Benaresi sarees, Varanasi represents the colorful and fascinating India of your dreams. With intimate rituals of life and death being parallelly performed on the Ghats, you’ll find it exhilarating to explore the religious geography of this city. Walk through the busy alleyways or watch the sunrise from a boat for an unforgettable experience. Trace the perimeter of the city, paying homage to shrines all the way. Who knows, a journey to this City of Light may turn out to be your favorite stop of all.\n\nThe north Indian city of Varanasi, or Benares, is regarded as sacred by Hindus, Buddhists and Jains. Situated in the fertile Ganga valley and on the banks of the Ganges, Varanasi is a place of pilgrimage for Hindus, who come to bathe in the holy river. Known as the City of Temples and a beacon of culture, Varanasi has produced many renowned writers. It’s also a centre of silk weaving, so practise haggling at the chaotic bazaar for some beautiful souvenirs. Rickshaws are the best way to get about.\n\nVaranasi is one of the oldest continuously inhabited cities in the world. It was one of the first major urban settlements in the middle Ganges valley. By the 2nd millennium BCE Varanasi was a seat of Vedic religion and philosophy and was also a commercial and industrial centre famous for its muslin and silk fabrics, perfumes, ivory works, and sculpture. ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
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
