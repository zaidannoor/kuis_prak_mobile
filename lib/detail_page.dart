import 'package:flutter/material.dart';
import './rental_car.dart';

class DetailPage extends StatelessWidget {
  final RentalCar car;
  const DetailPage({ Key? key, required this.car }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
        child: Text('ini halaman Detail'),
      ),
      )
    );
  }
}