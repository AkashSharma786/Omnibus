
import 'package:omnibus/auth/components/round_icon_button.dart';
import 'package:omnibus/auth/components/secondary_button.dart';
import 'package:omnibus/auth/signup.dart';
import 'package:omnibus/color_scheme.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  VoidCallback popParent;

  SignupScreen({ super.key , required this.popParent});
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {

  void popThis()
  {
    widget.popParent();
    Navigator.pop(context);
  }

  void loadLogin()
  {
    
     Navigator.push(context, MaterialPageRoute(builder: (context) => Signup( popParent: popThis,) ));
    
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

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                  
                  RoundIconButton(buttonIcon: Icon(Icons.arrow_back_ios_new), onTap: ()=> Navigator.pop(context)),


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
                   ),]

                  ),
                 
               

                SizedBox(height: 15,),

                Container(
                  alignment: Alignment( -0.7 ,0),
                  
                  child:
                 Text('Create Account!',
                style: TextStyle(fontSize: 40,
                  fontWeight: FontWeight.bold,color: Colors.white
                ),)),

                SizedBox(height: 25,),



                Column(
                  children: [
                    SecondaryButton(iconPath: "images/facebookIconSm.png", name: "Signup with facebook", onPressed: printer),
                    SizedBox(height: 15,),
                    SecondaryButton(iconPath: "images/googleIconSm.png", name: "Signup with google", onPressed: printer),
                    SizedBox(height: 15,),
                    SecondaryButton(iconPath: "images/emailIcon.png", name: "Signup with Email", onPressed: loadLogin),
                  ],
                ),


             ],
           ),
    
      
        
      ),
    );
  }
}
