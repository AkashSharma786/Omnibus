import 'dart:async';

import 'package:flutter/material.dart';
import 'package:omnibus/welcome/welcome_screen.dart';
import './color_scheme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => WelcomeScreen()),
      );
     });
  }


  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
      body: Container(
        
        color: AppColorScheme.backgroundColor,
        alignment: Alignment.center,
       
        
        
           child: Column(
             children: [
                SizedBox(height: 100,),

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

                SizedBox(height: 250,),


              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(

                  image: DecorationImage(
                    image: AssetImage('images/loading.gif'),
                    fit: BoxFit.cover,

                  )
                ),
              )


             ],
           ),
    
      
        
      ),
    );
  }
}
