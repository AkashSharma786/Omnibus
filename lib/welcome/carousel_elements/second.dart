import '../../color_scheme.dart';
import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [

        

        Center(
          child: Container(
            alignment: Alignment(-0.25, -0.2),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/holding_phone.png'),
                fit: BoxFit.contain,
              ),
            ),



          ),
        ),





        SizedBox(
          height: 20,
        ),


        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 100,
            alignment: Alignment(0.2, 0),
            child: Text(
              "Your Satisfaction Is Our Second Priority.",
              style: TextStyle(
                  color: AppColorScheme.textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
          ),
        ),


      ]
      
      ,);
  }
}
