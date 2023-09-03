import 'package:booking/components/button.dart';
import 'package:flutter/material.dart';

class Success extends StatefulWidget {
  const Success({super.key});

  @override
  State<Success> createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Заказ оплачен'),
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 28),
          child: Column(children: [
            const Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(image: AssetImage('./assets/images/success.png')),
                SizedBox(
                  height: 32,
                ),
                Column(
                  children: [
                    Text('Ваш заказ принят в работу',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          height: 1.20,
                        )),
                    SizedBox(height: 20),
                    Text(
                        'Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF828796),
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.20,
                        )),
                  ],
                ),
              ],
            )),
            MyButton(
                text: "Супер",
                onTap: () {
                  Navigator.pushNamed(context, '/home');
                }),
          ],)
        )
        );
  }
}
