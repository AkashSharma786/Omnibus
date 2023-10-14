import 'dart:async';

import 'package:omnibus/auth/components/secondary_button.dart';
import 'package:omnibus/auth/login.dart';
import 'package:omnibus/auth/signup_screen.dart';
import 'package:omnibus/color_scheme.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  void popThis()
  {
    Navigator.pop(context);
  }

  void loadLogin()
  {
    
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login( popParent: popThis,) ));
    
  }

  void printer() {
    print("hello");
  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      body: Container(
        
        color: AppColorScheme.backgroundColor,
        alignment: Alignment.center,
       
        
        
           child: Column(
             children: [
                SizedBox(height: 50,),

               Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150),
                  image: DecorationImage(
                    image: AssetImage('images/omnibus_logo.jpeg'),
                    fit: BoxFit.cover,
                  )
                ),
               ),

                SizedBox(height: 15,),

                Container(
                  alignment: Alignment( -0.7 ,0),
                  
                  child:
                 Text('Let you in !',
                style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold,color: Colors.white
                ),)),

                SizedBox(height: 25,),



                Column(
                  children: [
                    SecondaryButton(iconPath: "images/facebookIconSm.png", name: "Login with facebook", onPressed: printer),
                    SizedBox(height: 15,),
                    SecondaryButton(iconPath: "images/googleIconSm.png", name: "Login with google", onPressed: printer),
                    SizedBox(height: 15,),
                    SecondaryButton(iconPath: "images/emailIcon.png", name: "Login with Email", onPressed: loadLogin),
                  ],
                ),

                SizedBox(height: 30,),

                Text("or", style: TextStyle(
                  color: AppColorScheme.textColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                
                ),),

               SizedBox(height: 30,),

                
                   SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width ,

                  

                     child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account ?", style: TextStyle(
                          color: AppColorScheme.textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                                   
                        SizedBox(width: 5,),
                                   
                        TextButton(
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
                          ),
                          
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(popParent: popThis,) ));
                                   
                          },
                          


                         child: Text("Sign up", style: TextStyle(

                          color: AppColorScheme.primaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                   
                        ),

                        
                        ),  
                        
                        ),
                                   
                                   
                      ],
                    ),
                   ),
                



                


           

             ],
           ),
    
      
        
      ),
    );
  }
}
