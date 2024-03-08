import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:carousel_pro/carousel_pro.dart';

// import 'package:carousel_pro/carousel_pro.dart';


class RajwadaIndore extends StatefulWidget{
  @override
  State<RajwadaIndore> createState() => _RajwadaIndoreState();
}

class _RajwadaIndoreState extends State<RajwadaIndore> {
  List<String> imageList = [
    'assets/images/Vrindavan.png',
    'assets/images/Red Fort.png',
    'assets/images/Akshardham Temple.png',
  ];

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Vrindavan', textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.deepPurple.shade500),
          ),
          actions: [
            Icon(FontAwesomeIcons.youtube, color: Colors.red, size: 30,),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(Icons.location_on, size: 30,),
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
                    itemBuilder: (context, i, id) {
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
                  child: Text(
                      'The town of Vrindavan in Mathura District of Uttar Pradesh is as relevant to Hindus of India as Krishna is to the great Indian epic, the Mahabharata. Its religious and mythological connotations are central to the worship of Krishna in the pantheon of Hindu gods. A precocious child, a trusted friend, a performer of miracles, a romantic lover and a saviour to all; Vrindavan is deeply associated with the life and times of Krishna and the tales woven around his life.\n\n Vrindavan is located about 10 kilometres away from Mathura, on the Delhi-Agra National Highway. Mathura is Krishna’s birthplace and is one of the seven holy cities for Hindu pilgrimage but Vrindavan was the site of an ancient, dense forest where Krishna spent much of his youth and adult years. Vrindavan also finds mention in the Hindu epic Mahabharata.Folklore and recorded evidence of Krishna’s life and his childhood shows us that he was raised in the village of Gokul near Vrindavan by his foster parents, Yashoda and Nanda. Vrindavan was the site of Krishna’s early childhood; the dense forests were ideal for him and his brother Balarama to play games and indulge in childhood pranks and pastimes with other children from Gokul.\n\n Vrindavan is specially known for Krishna’s humorous antics and pranks, his dalliances with village girls from Gokul known as Gopis and his romance with Radha, his lifetime companion which became the basis for the ‘bhaktiras’, the divine love between master and disciple. It is this divine love that bears relevance to Vrindavan and the manner in which it has grown over the past few centuries to not only becoming a place of worship for Krishna followers but also as a seat of learning of Vaishnavism.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700),),
                )

              ],
            ),
          ],
        ),

      );
  }
}

