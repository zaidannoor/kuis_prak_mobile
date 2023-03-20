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
        child: Text(car.brand + ' ' + car.model),
      )),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Center(
              child: Image.network(car.images[0], height: 200,),
            ),
            SizedBox(height: 12.0),

            Center(
              child: Text(car.brand + ' ' + car.model,
                style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 32
                ),
              ),
            ),
            SizedBox(height: 12.0),

            
            
          ],
        ),
        )
      
    );
    
  }
}