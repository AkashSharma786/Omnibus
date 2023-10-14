import '../../color_scheme.dart';
import 'package:flutter/material.dart';

class BigMainButton extends StatefulWidget {
  String buttonName;
  VoidCallback callback;

  BigMainButton({super.key , required this.callback , required this.buttonName });

  @override
  State<BigMainButton> createState() => _BigMainButtonState();
}

class _BigMainButtonState extends State<BigMainButton> {

  Color BoxShadowColor = AppColorScheme.primaryColor;
  
  @override
  Widget build(BuildContext context) {
    return         
          Ink(
          
          width:  MediaQuery.of(context).size.width/1.08,
          height: 60,
        
          

          
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: BoxShadowColor,
                spreadRadius: 1,
                blurRadius: 3,
              )
            ],
            color: AppColorScheme.primaryColor,
          ),


          child: InkWell(
          
           onTapDown: (details) {
              setState(() {
                  BoxShadowColor = AppColorScheme.secondaryTextColor;
                });
            
             
           },

           onTapUp: (details) {
             setState(() {
                  BoxShadowColor = AppColorScheme.primaryColor;
                });
             
           },

            onTap: () {
              widget.callback();
              
           
              
            },
            splashColor: Colors.green,
            borderRadius: BorderRadius.circular(15),
            
            
            child: Align(
              alignment: Alignment(0, 0),
              child: Text(
                widget.buttonName,
                style: TextStyle(
                  color: AppColorScheme.secondaryTextColor,
                ),
              ),
            ),
          ),
        )
;
  }
}