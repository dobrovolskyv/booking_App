import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyButton({super.key,
   required this.text,
   required this.onTap
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(13, 114, 255, 1),
            borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              height: 1.10,
              letterSpacing: 0.10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
