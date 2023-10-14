import 'package:omnibus/color_scheme.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InputTextField extends StatefulWidget {
  bool isPassword;
  Icon textFieldIcon;
  String hintText;
  InputTextField({super.key , required this.isPassword , required this.textFieldIcon , required this.hintText});

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {

  late bool isPasswordVisible = false;
  late bool isInFocus = false;
  late FocusNode _emailFocusNode = FocusNode()
  ..addListener(() {
    setState(() {
      isInFocus = !isInFocus;

    });
  
  }) ;
  

  @override
  Widget build(BuildContext context) {
    return  Container(

              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: isInFocus? AppColorScheme.primaryColor.withOpacity(0.4):Colors.black.withOpacity(0),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],

                color: isInFocus? Colors.black : AppColorScheme.backgroundColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 1.0,
                  color: isInFocus? AppColorScheme.primaryColor:Colors.white,
                )
              ),

              height: 70,
              width: MediaQuery.of(context).size.width/1.08,

              child: Row(
                children: [
                  SizedBox(width: 5,),

                  Container(
                    

                    width: widget.isPassword? MediaQuery.of(context).size.width/1.4 : 320,
                    child: TextField(
                      obscureText: isPasswordVisible,
                      autocorrect: false,
                    
                      enableSuggestions: widget.isPassword ?false:true,
                      
                      
                      
                  
                    cursorColor: AppColorScheme.primaryColor,
                    style: TextStyle(color: AppColorScheme.primaryColor),
                      
                    focusNode: _emailFocusNode,
                  
                    
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    
                        
                      hintText: widget.hintText,
                      
                      icon: Icon(
                        widget.textFieldIcon.icon,
                        color: isInFocus? AppColorScheme.primaryColor: Colors.white, // Change the color of the icon
                        size: 25, // Change the size of the icon
                      ),

    
                      
                      
                      hintStyle: TextStyle(color: Color.fromARGB(255, 24, 90, 28)),
                      
                    
                      
                    ),
                              ),
                  ),


              Builder(
                builder: (context) {
                  if(widget.isPassword){

                    
                      return IconButton(
                        style: ButtonStyle(
                          
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          
                        ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                      
                    },
                    icon: Icon(
                    
                    isPasswordVisible? Icons.visibility_off : Icons.visibility ,
                    color: isInFocus? AppColorScheme.primaryColor: Colors.white,
                    size: 25,
                    
                    ),
                  );

                  }
                  
                  return SizedBox(width: 0,);
                
                }
              )

                ],
              ),
    );


  }
}