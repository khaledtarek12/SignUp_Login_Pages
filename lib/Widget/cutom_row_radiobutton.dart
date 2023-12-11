import 'package:flutter/material.dart';

class CusttomRadioButtom extends StatefulWidget {
  const CusttomRadioButtom({super.key});

  @override
  State<CusttomRadioButtom> createState() => _CusttomRadioButtomState();
}

class _CusttomRadioButtomState extends State<CusttomRadioButtom> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Radio(
            value: 'Doctor',
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = 'Doctor';
              });
            }),
        const Text(
          'Doctor',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Radio(
            value: 'Patient',
            groupValue: gender,
            onChanged: (value) {
              setState(() {
                gender = 'Patient';
              });
            }),
        const Text(
          'Patient',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }
}
