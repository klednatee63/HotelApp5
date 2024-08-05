import 'package:flutter/material.dart';
import 'package:hotelapp_5/main.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    final hotel = ModalRoute.of(context)?.settings.arguments as Hotel;

    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
    );
  }
}
