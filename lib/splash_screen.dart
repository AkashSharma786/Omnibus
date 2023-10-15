import 'dart:async';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:omnibus/start_components/dialog_box.dart';
import 'package:omnibus/welcome/welcome_screen.dart';
import 'package:permission_handler/permission_handler.dart';
import './color_scheme.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool connectionResult = false;


void askPermission() async {

  if(await Permission.location.isGranted == false) {
    await Permission.location.request();
  }

  if( await Permission.storage.isGranted == false) {
    await Permission.storage.request();
  }
  

}

  void checkInternet() async {
    bool connectionResult = await  InternetConnectionChecker().hasConnection;
    if(connectionResult == true) {

      print('YAY! Free cute dog pics!');
      Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => WelcomeScreen()),
      );

    } else {

     showDialog(context: context,
     barrierDismissible: false,

      builder: (context) => ConnectionDialogBox(checkConnection: checkInternet,)
     );
    

    
    
    }


  }

  @override
  void initState()   {
    super.initState();
    askPermission();

    checkInternet();



   

    


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
