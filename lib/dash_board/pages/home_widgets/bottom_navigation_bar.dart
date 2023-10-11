import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../../home_page.dart';

class BottomNavBar extends StatefulWidget {
  int index = 0;
  final VoidCallback toggle;
  final IntCallback setIndex;

  BottomNavBar({Key? key, required this.toggle, required this.setIndex})
      : super(key: key);

  @override
  State<BottomNavBar> createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  onNavBarButtonTap(index) {
    widget.toggle();
    widget.setIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GNav(
        padding: const EdgeInsets.all(8),
        gap: 5,
        activeColor: Colors.green,
        backgroundColor: Colors.green,
        iconSize: 24,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        tabBackgroundColor: Colors.white,
        tabMargin: const EdgeInsets.all(5),

        // Use the GNav widget
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.bookmark,
            text: 'Bookmark',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.payment,
            text: 'Payment',
            iconColor: Colors.white,
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
            iconColor: Colors.white,
          ),
        ],
        selectedIndex: widget.index,
        onTabChange: (index) {
          onNavBarButtonTap(index);
        },
      ),
    ]);
  }
}
