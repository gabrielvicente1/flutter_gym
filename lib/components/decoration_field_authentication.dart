import 'package:flutter/material.dart';
import 'package:gym/_comum/my_colors.dart';

InputDecoration getAutheticationInputDecoration(String label){
  return InputDecoration(
    hintText: label,
    fillColor: MyColors.white,
    filled: true,
    contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(64)),
    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(64),
    borderSide: BorderSide(color: Colors.black, width: 2),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(64),
        borderSide: BorderSide(color: MyColors.navyBlue, width: 4),
    ),
    errorBorder:  OutlineInputBorder (
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
    focusedErrorBorder: OutlineInputBorder (
      borderRadius: BorderRadius.circular(64),
      borderSide: const BorderSide(color: Colors.red, width: 2),
    ),
  );
}