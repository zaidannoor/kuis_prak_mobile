import 'package:flutter/material.dart';
import './detail_page.dart';
import './rental_car.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Rental Mobil'),
      )),
      body: ListView.builder(
          itemCount: rentalCar.length,
          itemBuilder: (context, index) {
            final RentalCar car = rentalCar[index];
            return Container(
                // height: 100,
                child: ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(car: car)));
              },
              leading:
                  Image.network(car.images[0], width: 120, fit: BoxFit.cover),
              title: Text(car.brand + ' ' + car.model),
              subtitle: Text(car.rentalPricePerDay + ' / hari'),
            ));
          }),
    );
  }
}
