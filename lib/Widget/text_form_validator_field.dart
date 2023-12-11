import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key, this.hint, this.prefexIcon, this.sufxIcon, this.onChange});

  final String? hint;
  final Icon? prefexIcon;
  final Icon? sufxIcon;
  final Function(String)? onChange;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // ignore: body_might_complete_normally_nullable
      validator: (data) {
        if (data!.isEmpty) {
          return 'value is empty';
        }
      },
      onChanged: onChange,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xffE7EFF2),
        hintText: hint,
        prefixIcon: prefexIcon,
        suffixIcon: sufxIcon,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
