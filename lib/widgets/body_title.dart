import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BodyTitle extends StatelessWidget {

  final String text;
  
  const BodyTitle({
    Key? key, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text, 
      style: TextStyle(
        color: Colors.white, 
        fontSize: 16.sp,
        fontWeight: FontWeight.w900,
      )
    );
  }
}