import 'package:flutter/material.dart';

class CusttomButtonPage extends StatelessWidget {
  const CusttomButtonPage({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff6796A7),
        borderRadius: BorderRadius.circular(25),
      ),
      height: 50,
      width: double.infinity,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
