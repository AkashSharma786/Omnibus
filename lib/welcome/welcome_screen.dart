import 'dart:ffi';
import 'dart:math';

import 'package:omnibus/welcome/carousel_elements/first.dart';
import 'package:omnibus/welcome/carousel_elements/second.dart';
import 'package:omnibus/welcome/carousel_elements/third.dart';
import 'package:omnibus/welcome/next_button.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../color_scheme.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  final CarouselController _controller = CarouselController();
  int currentIndex = 0;

  void changeSlide( ) {
    _controller.animateToPage(currentIndex + 1);
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorScheme.backgroundColor,
      body: Column(children: [
        SizedBox(
          height: 100,
        ),



        CarouselSlider(
          carouselController: _controller,
          items: [
            First(),
            Second(),
            Third(),
          ],

          options: CarouselOptions(
              enableInfiniteScroll: false,
              initialPage: 0,
              height: 444,
              autoPlay: false,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              
              },
              ),

              
        ),
        SizedBox(
          height: 10,
        ),




        Container(
          height: 20,
          width: 50,
          child: Row(
            children: [

              
               Icon(Icons.circle, color: currentIndex == 0 ? AppColorScheme.primaryColor : Colors.grey, size: 10,),
                
              

              SizedBox(width: 10,),


               Icon(Icons.circle, color: currentIndex == 1 ? AppColorScheme.primaryColor : Colors.grey, size: 10,),
              SizedBox(width: 10,),
               Icon(Icons.circle, color: currentIndex == 2 ? AppColorScheme.primaryColor : Colors.grey, size: 10,),


            ],
          ),
        ),



        SizedBox(
          height: 70,
        ),

        NextButton(currentIndex: currentIndex, changeSlide: changeSlide,)






        
      ]),
    );
  }
}
