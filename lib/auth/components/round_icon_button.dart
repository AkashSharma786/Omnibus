import 'package:omnibus/color_scheme.dart';
import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {

  Icon buttonIcon;
  VoidCallback onTap;
  
  RoundIconButton({super.key , required this.buttonIcon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColorScheme.primaryColor,
                ),

                child: IconButton(
                  iconSize: 25,
                  icon:buttonIcon,
                  
                  onPressed: () {
                    onTap();  
                  },
                ),
              );

  }
}