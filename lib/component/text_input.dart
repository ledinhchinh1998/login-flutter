import 'package:flutter/material.dart';


class InputTexts extends StatelessWidget {
  final Icon icon;
  final String hintText;
  final TextEditingController controller;
  const InputTexts({Key key, this.icon, this.controller, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          prefixIcon:icon,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
            borderSide: BorderSide(color: Colors.grey, width: 2),
          ),
          hintText: hintText,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10, right: 10)),
    );
  }
}