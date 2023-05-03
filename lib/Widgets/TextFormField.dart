import 'package:flutter/material.dart';

Widget textfield({
  // required Function(value) {valiDator},
  int? length,
  TextInputType? input,
  IconData? suffixicon,
  required String hintText,
  IconData? icon,
  double? iconsize,
  IconData? suffixIcon,
  double? suffixIconsize,
  int? iconColor,
  int? suffixIconColor,
  required TextEditingController controller,
  required FormFieldValidator<String> validator,
}) {
  return TextFormField(
    maxLength: length,
    keyboardType: input,
    validator: validator,
    decoration: InputDecoration(
      hintText: hintText,
      suffixIcon: Icon(
        suffixicon,
        size: suffixIconsize,
        color: Color(suffixIconColor!),
      ),
      // prefixIcon: Icon(
      //   icon,
      //   size: iconsize,
      //   color: Color(iconColor!),
      // ),
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffFF6F61)),
        borderRadius: BorderRadius.circular(5),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffFF6F61)),
        borderRadius: BorderRadius.circular(5),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xffFF6F61)),
        borderRadius: BorderRadius.circular(5),
      ),
    ),
  );
}
