import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

void main() {
  runApp(HotelApp());
}

class Hotel {
  String name;
  int rating;
  String description;
  int price;
  String image;

  Hotel(
      {required this.name,
      required this.rating,
      required this.description,
      required this.price,
      required this.image});
}

class HotelApp extends StatelessWidget {
  HotelApp({super.key});

  List<Hotel> hotels = [
    Hotel(
      name: 'Songphunburi 1',
      price: 800,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_01.jpg',
    ),
    Hotel(
      name: 'Songphunburi 2',
      price: 900,
      description: 'wifi include',
      rating: 2,
      image: 'images/hotel_02.jpg',
    ),
    Hotel(
      name: 'Songphunburi 3',
      price: 1200,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_03.jpg',
    ),
    Hotel(
      name: 'Songphunburi 4',
      price: 1100,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_04.jpg',
    ),
    Hotel(
      name: 'Songphunburi 5',
      price: 400,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_05.jpg',
    ),
    Hotel(
      name: 'Songphunburi 6',
      price: 600,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_06.jpg',
    ),
    Hotel(
      name: 'Songphunburi 7',
      price: 700,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_07.jpg',
    ),
    Hotel(
      name: 'Songphunburi 8',
      price: 800,
      description: 'wifi include',
      rating: 3,
      image: 'images/hotel_08.jpg',
    ),
  ];

  //get index => 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hotel App",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kled Hotel App.'),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: GridView.builder(
            itemCount: hotels.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (_, int index) {
              return InkWell(
                child: GridTile(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                          left: 10.0,
                          top: 5.0,
                          right: 10.0,
                          bottom: 5.0,
                        ),
                        color: Colors.pink,
                        child: Column(
                          children: [
                            Image.asset(
                              hotels[index].image,
                              //width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Text(hotels[index].name),
                            Text(hotels[index].price.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
