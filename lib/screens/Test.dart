import "dart:convert";

import "package:booking/components/button.dart";
import "package:booking/components/slides.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<dynamic> _items = [];
  @override
  void initState() {
    super.initState();
    readJSON();
  }

  Future<void> readJSON() async {
    final String response =
        await rootBundle.loadString('assets/api/rooms.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["rooms"];
      print("количество списка ${_items.length}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Отель',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: Column(
          children: [
            _items.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                    itemCount: _items.length,
                    itemBuilder: (context, index) {
                      final doc = _items[index];
                      final details = doc['peculiarities'];
                      return Card(
                          key: ValueKey(_items[index]['id']),
                          margin: const EdgeInsets.all(10),
                          color: Colors.amber[900],
                          child: Column(
                            children: [
                              Text(_items[index]['name']),
                              Row(
                                children: details.map<Widget>((detail) {
                                  return Row(
                                    children: [
                                      Text(detail),
                                    ],
                                  );
                                }).toList(),
                              ),
                              Row(
                                children: [
                                  Text(
                                    _items[index]['price'],
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 30,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w600,
                                      height: 1.20,
                                    ),
                                  ),
                                  SizedBox(width: 8),
                                  Text(_items[index]['price_per'], 
                                  style: const TextStyle(
                                  color: Color(0xFF828796),
                                  fontSize: 16,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 1.20,
                                  ),),
                                                                  ],
                              )
                            ],
                          ));
                    },
                  ))
                : const Center(
                    child: CircularProgressIndicator(),
                  )
          ],
        ));
  }
}
