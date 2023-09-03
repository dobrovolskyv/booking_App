import 'package:booking/components/button.dart';
import 'package:flutter/material.dart';

class AppartmenScreen extends StatefulWidget {
  const AppartmenScreen({super.key});

  @override
  State<AppartmenScreen> createState() => _AppartmenScreenState();
}

class _AppartmenScreenState extends State<AppartmenScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
          title: const Text(
            'Steigenberger Makadi',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
            child: Column(
              children: [
                Image(image: AssetImage('assets/images/img3.jpg')),
                Text('second screen choice apratmen'),
                SizedBox(height: 25),
                MyButton(
                  text: 'Выбрать номер',
                  onTap: () {
                    Navigator.pushNamed(context, '/booking');
                  },
                )
              ],
            )));
  }
}
