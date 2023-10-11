import '../../color_scheme.dart';
import 'package:omnibus/home_screen.dart';
import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  VoidCallback changeSlide;
  int currentIndex;
  NextButton({super.key , required this.changeSlide, required this.currentIndex  });

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {

  Color BoxShadowColor = AppColorScheme.primaryColor;
  
  @override
  Widget build(BuildContext context) {
    return         
          Ink(
          
          width: 300,
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
              
              if (widget.currentIndex == 2) {

              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              } else {
                widget.changeSlide();
              }

            
              
            },
            splashColor: Colors.green,
            borderRadius: BorderRadius.circular(15),
            
            
            child: Align(
              alignment: Alignment(0, 0),
              child: Text(
                "Next",
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