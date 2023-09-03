import 'package:booking/components/button.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
            title: Text("Бронирование")),
        body: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
            child: Column(
              children: [
                Text('booking'),
                SizedBox(height: 25),
                MyButton(
                    text: "Оплатить",
                    onTap: () {
                      Navigator.pushNamed(context, '/success');
                    })
              ],
            )));
  }
}
