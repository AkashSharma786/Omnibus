import 'dart:ffi';

import 'package:omnibus/color_scheme.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatefulWidget {
  String iconPath;
  String name;
  VoidCallback onPressed;
  SecondaryButton({super.key ,required this.iconPath, required this.name,required this.onPressed});

  @override
  State<SecondaryButton> createState() => _SecondaryButtonState();
}

class _SecondaryButtonState extends State<SecondaryButton> {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: 300,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: Colors.grey[350]!,
          width: 2,
        ),
        
      ),


      child: TextButton(
        onPressed: widget.onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(widget.iconPath ,
            fit: BoxFit.fill,
            ),

            SizedBox(width: 10,),
            Text(widget.name,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColorScheme.textColor,
            ),),

          ],
        ),
      ),
    );
  }
}