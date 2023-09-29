
import 'package:flutter/material.dart';

InputDecoration  AppInputDecoration(labelText) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    border: OutlineInputBorder(),
    labelText: labelText
  );
}

ButtonStyle AppButtonStyle(){
  return IconButton.styleFrom(
    padding: EdgeInsets.all(10),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
  ));
}

SizedBox AppSized50(child){
  return SizedBox(
      height: 50,
      width: double.infinity,
    child:Container(
      padding: EdgeInsets.all(8),
      child: child,
    )
  );
}