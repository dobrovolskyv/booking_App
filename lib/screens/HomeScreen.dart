import "package:booking/components/button.dart";
import "package:booking/components/slides.dart";
import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Отель',
            style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        body: ListView(
          
          children: [
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
              clipBehavior: Clip.antiAlias,
              decoration: const ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Slides(),
                    SizedBox(height: 15.0),
                    Container(
                      width: 170,

                      decoration: const BoxDecoration(
                        color: Color(0x33FFC600),
                      ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: const Row(children: [
                        Image(image: const AssetImage('assets/icons/star.png')),
                        Text(
                          '5 Превосходно',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFFA800),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 1.20,
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(height: 8.0),
                    const Text(
                      'Steigenberger Makadi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    GestureDetector(
                        // style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent, elevation: 0,foregroundColor: Colors.transparent),
                        onTap: () {
                          Navigator.pushNamed(context, '/test');
                        },
                        child: const Text(
                            'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                            style: TextStyle(
                              color: Color(0xFF0D72FF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.20,
                              fontFamily: 'SF Pro Display',
                            ))),
                    SizedBox(height: 8.0),
                    const Row(
                      children: [
                        Text(
                          'от 134 673 ₽',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w600,
                            height: 1.20,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          'за тур с перелётом',
                          style: TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1.20,
                          ),
                        )
                      ],
                    ),

                  ]),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28, top: 16),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              margin: EdgeInsets.only(top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Об отеле',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        height: 1.20,
                      )),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFBFBFC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          '3-я линия',
                          style: TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 1.20,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFBFBFC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          'Платный Wi-Fi в фойе',
                          style: TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 1.20,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFBFBFC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          '30 км до аэропорта',
                          style: TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 1.20,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: ShapeDecoration(
                          color: Color(0xFFFBFBFC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        child: const Text(
                          '1 км до пляжа',
                          style: TextStyle(
                            color: Color(0xFF828796),
                            fontSize: 16,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 1.20,
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 17),
                  Text(
                    'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.8999999761581421),
                      fontSize: 16,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 1.20,
                    ),
                  ),
                  SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: ShapeDecoration(
                      color: Color(0xFFFBFBFC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Column(
                      children: [
                        Row(
                          children: [
                            Image(
                                image:
                                    const AssetImage('assets/icons/emoji.png')),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Удобства',
                                  style: TextStyle(
                                    color: Color(0xFF2C3035),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.20,
                                  ),
                                ),
                                Text(
                                  'Самое необходимое',
                                  style: TextStyle(
                                    color: Color(0xFF828696),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.20,
                                  ),
                                )
                              ],
                            ),
                            Image(
                                image: const AssetImage(
                                    './assets/icons/arrow.png')),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Image(
                                image:
                                    const AssetImage('assets/icons/done.png')),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Что включено',
                                  style: TextStyle(
                                    color: Color(0xFF2C3035),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.20,
                                  ),
                                ),
                                Text(
                                  'Самое необходимое',
                                  style: TextStyle(
                                    color: Color(0xFF828696),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.20,
                                  ),
                                )
                              ],
                            ),
                            Image(
                                image: const AssetImage(
                                    './assets/icons/arrow.png')),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Image(
                                image:
                                    const AssetImage('assets/icons/close.png')),
                            SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Что не включено',
                                  style: TextStyle(
                                    color: Color(0xFF2C3035),
                                    fontSize: 16,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.20,
                                  ),
                                ),
                                Text(
                                  'Самое необходимое',
                                  style: TextStyle(
                                    color: Color(0xFF828696),
                                    fontSize: 14,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    height: 1.20,
                                  ),
                                )
                              ],
                            ),
                            Image(
                                image: const AssetImage(
                                    './assets/icons/arrow.png')),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 7),
                clipBehavior: Clip.antiAlias,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Color(0xFFE8E9EC),
                    ),
                  ),
                ),
                child: Column(
                  children: [
                    MyButton(
                      text: "К выбору номера",
                      onTap: () {
                        Navigator.pushNamed(context, '/appartmenScreen');
                      },
                    )
                  ],
                ))
          ],
        ));
  }
}
