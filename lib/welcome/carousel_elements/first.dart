import '../../color_scheme.dart';
import 'package:flutter/material.dart';

class First extends StatelessWidget {
  const First({super.key});

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
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(
                    image: AssetImage(
                  'images/omnibus_logo.jpg',
                )),
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
              "Your Satisfaction Is Our First Priority.",
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
