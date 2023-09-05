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
  List _items = [];

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
                          return Card(
                            key: ValueKey(_items[index]['id']),
                            margin: const EdgeInsets.all(10),
                            color: Colors.amber[900],
                            child: ListTile(
                              leading: Text(_items[index]['name']),
                              title: Text(_items[index]['price']),
                              subtitle: Text(_items[index]['price_per']),
                            ),
                          );
                        },
                      ))
                    : ElevatedButton(
                        onPressed: () {
                          readJSON();
                        },
                        child: Center(
                          child: Text('load json'),
                        )
                        ),
          ],
        )
        );
  }
}
