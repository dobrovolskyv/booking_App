import 'package:booking/screens/Test.dart';
import 'package:booking/screens/booking.dart';
import 'package:booking/screens/apartmensScreen.dart';
import 'package:booking/screens/successScreen.dart';
import 'package:flutter/material.dart';
import 'screens/HomeScreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'booking',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 254, 254)),
      ),
      home: const HomeScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/appartmenScreen': (context) => const AppartmenScreen(),
        '/booking': (context) => const Booking(),
        '/success':(context) => const Success(),
        '/test':(context) => const Test()
      },
    );
  }
}

