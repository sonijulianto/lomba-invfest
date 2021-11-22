import 'package:flutter/material.dart';
import 'package:lomba/common/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final TextInputType input;

  const CustomTextFormField(
      {Key? key,
      required this.title,
      required this.hintText,
      this.obscureText = false,
      required this.controller,
      required this.input})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 12),
          ),
          SizedBox(
            height: 5,
          ),
          TextFormField(
            cursorColor: blueColor,
            obscureText: obscureText,
            controller: controller,
            keyboardType: input,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 8),
              hintText: hintText,
              hintStyle: greyTextStyle.copyWith(fontSize: 12),
              border: OutlineInputBorder(
                gapPadding: 1,
                borderRadius: BorderRadius.circular(
                  10,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                gapPadding: 1,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                borderSide: BorderSide(
                  color: blueColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
