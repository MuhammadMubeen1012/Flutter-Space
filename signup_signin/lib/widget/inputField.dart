import 'package:flutter/material.dart';
import '../helper/constant.dart';

InputField({
  required double width,
  required TextEditingController controller,
  required String hintText,
  bool isObscure = false,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    width: width * 0.8,
    child: TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: secondaryTextColor, fontSize: 22),
        hintText: hintText,
        border: InputBorder.none,
      ),
      obscureText: isObscure,
    ),
  );
}
