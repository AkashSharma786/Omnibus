import 'dart:ffi';
import 'dart:math';

import 'package:omnibus/auth/components/big_main_button.dart';
import 'package:omnibus/auth/components/round_icon_button.dart';
import 'package:omnibus/auth/components/text_field.dart';
import 'package:omnibus/color_scheme.dart';
import 'package:omnibus/dash_board/home_page.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {

  VoidCallback popParent;

  Signup({ super.key, required this.popParent});

  
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  late String _email;
  late String _password;
  FocusScopeNode currentFocus = FocusScopeNode();
 

  void login()
  {
    widget.popParent();
    
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
     
  }

  void back()
  {
    Navigator.pop(context);
  }


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {
      FocusScopeNode currentFocus = FocusScope.of(context);
      if (!currentFocus.hasPrimaryFocus) {
        currentFocus.unfocus();
      }
    },
      child: Scaffold(
    
      backgroundColor: AppColorScheme.backgroundColor,
    
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
        
        
            
        
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RoundIconButton(
                      buttonIcon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
        
                      ),


                       onTap: back),

                    const SizedBox(width: 60,),


                       Container(
                        decoration: BoxDecoration(
                          color: AppColorScheme.primaryColor,
                          borderRadius: BorderRadius.circular(150),
                        ),
                        child: Icon(Icons.person_2,
                         color: Colors.white,
                          size: 100,)),
                  ],
                ),
                SizedBox(height: 20,),
        
                   
                   InputTextField(isPassword: false, textFieldIcon: Icon( Icons.person ), hintText: "Enter name"),

                    SizedBox(height: 30,),
        
                InputTextField( hintText: "Enter email ", isPassword: false, textFieldIcon:  Icon(Icons.email ,
                        color:  Colors.white,
                        ),
                        ),
        
                    SizedBox(height: 30,),
        
                InputTextField(isPassword: true,
                 textFieldIcon: Icon(Icons.lock,),
                  hintText: "Enter password",),
        
                  SizedBox(height: 30,),

                  InputTextField(isPassword: false,
                   textFieldIcon: Icon(Icons.lock),

                    hintText: "Re-enter password",),
                    SizedBox(height: 30, ),
        
                  BigMainButton(callback: login, buttonName: "Create Account",),
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
