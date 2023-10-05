import 'package:flutter/material.dart';
import 'package:smarthome/theme.dart';

class AppInput extends StatelessWidget {
  final String? LabelText;
  final String? Label;
  final TextEditingController? controller;
  final bool IsPassword;

  const AppInput({
    Key? key,
    this.controller,
    this.LabelText,
    this.Label,
    this.IsPassword = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$LabelText',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: whitecolor,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextFormField(
          validator: (value) => (value!.isEmpty) ? 'Isi $Label' : null,
          obscureText: IsPassword,
          controller: controller,
          style: TextStyle(color: whitecolor),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            label: Text(
              '$LabelText',
              style: TextStyle(
                fontSize: 18,
                color: whitecolor,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 3, color: purplecolor),
              borderRadius: BorderRadius.circular(14),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(width: 3, color: purplecolor),
            ),
          ),
        ),
        SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
