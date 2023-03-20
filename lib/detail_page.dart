import 'package:flutter/material.dart';
import './rental_car.dart';

class DetailPage extends StatefulWidget {
  final RentalCar car;
  const DetailPage({Key? key, required this.car}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Center(
          child: Text(widget.car.brand + ' ' + widget.car.model),
        )),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  widget.car.images[0],
                  height: 200,
                ),
              ),
              SizedBox(height: 12.0),
              Center(
                child: Text(
                  widget.car.brand + ' ' + widget.car.model,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                padding: EdgeInsets.all(10),
                child: Table(
                  columnWidths: {
                    0: IntrinsicColumnWidth(),
                    1: IntrinsicColumnWidth(),
                  },
                  children: [
                    TableRow(children: [
                      Text(
                        'Brand',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        widget.car.brand,
                        style: TextStyle(fontSize: 17.0),
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        'Model',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        widget.car.model,
                        style: TextStyle(fontSize: 17.0),
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        'Tahun',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        widget.car.year.toString(),
                        style: TextStyle(fontSize: 17.0),
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        'Biaya Sewa',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        'Rp ' + widget.car.year.toString() + ' per hari',
                        style: TextStyle(fontSize: 17.0),
                      )
                    ]),
                    TableRow(children: [
                      Text(
                        'Status',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        ' : ',
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        widget.car.available ? 
                        'Tersedia' : 
                        'Tidak Tersedia',

                        style: TextStyle(color: widget.car.available ? Colors.green : Colors.red),
                      )
                    ]),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              Container(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('Pesan')),
              ),

              SizedBox(height: 15.0),

              Text('Deskripsi', 
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 10.0),
              Container(
                child: Text(widget.car.description)
              )
            ],
          ),
        ));
  }
}
