import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:omnibus/color_scheme.dart';

class ConnectionDialogBox extends StatefulWidget {
  VoidCallback checkConnection;
  ConnectionDialogBox({super.key , required this.checkConnection });

  @override
  State<ConnectionDialogBox> createState() => _ConnectionDialogBoxState();
}

class _ConnectionDialogBoxState extends State<ConnectionDialogBox> {
  String dialog_box_text = "Plese check your internet connection";
  @override
  Widget build(BuildContext context)  {
    return AlertDialog(
            title: Text('No Internet',
            style: TextStyle(
              color: AppColorScheme.textColor,
            ),

            ),
            content: Text(dialog_box_text ,
            style: TextStyle(
              color: AppColorScheme.textColor,
            ),),
            backgroundColor: AppColorScheme.backgroundColor,
            shadowColor: AppColorScheme.secondaryColor,
            
            
            actions: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                  (states) => states.contains(MaterialState.pressed)? AppColorScheme.primaryColor: Colors.green

                  ),
              ),
                onPressed: () async {
                  if(await InternetConnectionChecker().hasConnection == true)
                  {
                    widget.checkConnection();
                    Navigator.of(context).pop();
                    
                  }
                  else {
                    setState(() {
                       dialog_box_text = "check Your Connection again";
                    });
                    
                  }
                  
      
                },
                child: Text('check',
                style: TextStyle(
                  color: AppColorScheme.textColor,
                ),
                ),
              )
            ],
          
        
      );
    
  }
    
  }