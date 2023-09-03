import "package:booking/components/button.dart";
import "package:booking/components/slides.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text('Отель', style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),),
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
            child: Column(
              children: [
                Slides(),
                SizedBox(height: 15.0),
                Container(
                  decoration: BoxDecoration(color: Color(0x33FFC600),),
                ),
                SizedBox(height: 25.0),
                SizedBox(height: 10),
                MyButton(
                  text: "К выбору номера",
                  onTap: () {
                    Navigator.pushNamed(context, '/appartmenScreen');
                  },
                )
              ],
            )));
  }
}
