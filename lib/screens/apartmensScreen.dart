import 'package:booking/components/button.dart';
import 'package:flutter/material.dart';
import "package:booking/components/slides.dart";
import "package:flutter/services.dart";
import "dart:convert";

class AppartmenScreen extends StatefulWidget {
  const AppartmenScreen({super.key});

  @override
  State<AppartmenScreen> createState() => _AppartmenScreenState();
}

class _AppartmenScreenState extends State<AppartmenScreen> {
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
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
           elevation: 0,
            foregroundColor: Colors.black,
            backgroundColor: Colors.transparent,
          title: const Text(
            'Steigenberger Makadi',
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
                      final imgs = doc['image_urls'];
                      return Card(
                          key: ValueKey(_items[index]['id']),
                          margin: const EdgeInsets.all(10),
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Column(
                                
                                children: imgs.map<Widget>((img) {
                                  return Row(
                                    children: [
                                      Image(image: NetworkImage(img),fit:BoxFit.contain),
                                    ],
                                  );
                                }).toList(),
                              ),
                              Text(
                                _items[index]['name'],
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 22,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.20,
                                ),
                              ),
                              // Row(
                              //   children: details.map<Widget>((detail) {
                              //     return Row(
                              //       children: [
                              //         Text(detail),
                              //       ],
                              //     );
                              //   }).toList(),
                              // ),
                              Row(
                                children: details.map<Widget>((detail) {
                                  return Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          decoration: ShapeDecoration(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5))),
                                          child: Text(
                                            detail,
                                            style: const TextStyle(
                                              color: Color(0xFF828796),
                                              fontSize: 16,
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w500,
                                              height: 1.20,
                                            ),
                                          ))
                                    ],
                                  );
                                }).toList(),
                              ),

                              // Row(
                              //   children: [
                              //     Container(
                              //       padding: EdgeInsets.symmetric(
                              //           horizontal: 10, vertical: 5),
                              //       decoration: ShapeDecoration(
                              //           color: Color(0xFFFBFBFC),
                              //           shape: RoundedRectangleBorder(
                              //               borderRadius:
                              //                   BorderRadius.circular(5))),
                              //       child: const Text(
                              //         'Все включено',
                              //         style: TextStyle(
                              //           color: Color(0xFF828796),
                              //           fontSize: 16,
                              //           fontFamily: 'SF Pro Display',
                              //           fontWeight: FontWeight.w500,
                              //           height: 1.20,
                              //         ),
                              //       ),
                              //     ),
                              //     const SizedBox(width: 8),
                              //     Container(
                              //       padding: EdgeInsets.symmetric(
                              //           horizontal: 10, vertical: 5),
                              //       decoration: ShapeDecoration(
                              //           color: Color(0xFFFBFBFC),
                              //           shape: RoundedRectangleBorder(
                              //               borderRadius:
                              //                   BorderRadius.circular(5))),
                              //       child: const Text(
                              //         'Кондиционер',
                              //         style: TextStyle(
                              //           color: Color(0xFF828796),
                              //           fontSize: 16,
                              //           fontFamily: 'SF Pro Display',
                              //           fontWeight: FontWeight.w500,
                              //           height: 1.20,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                              ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0x190D72FF),
                                      elevation: 0),
                                  child: const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        'Подробнее о номере',
                                        style: TextStyle(
                                          color: Color(0xFF0D72FF),
                                          fontSize: 16,
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                          height: 1.20,
                                        ),
                                      ),
                                      Image(
                                        image: AssetImage(
                                            'assets/icons/arrow_blue.png'),
                                      )
                                    ],
                                  )),
                              SizedBox(height: 16),
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
                                  Text(
                                    _items[index]['price_per'],
                                    style: const TextStyle(
                                      color: Color(0xFF828796),
                                      fontSize: 16,
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w400,
                                      height: 1.20,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 19),
                              MyButton(
                                  text: ('Выбрать номер'),
                                  onTap: () {
                                    Navigator.pushNamed(context, '/booking');
                                  })
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
