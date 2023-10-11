import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/busLogo.png"),
                ),
                SizedBox(height: 10),
                Text(
                  "John Doe",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          buildListTile(
            icon: Icons.leaderboard,
            text: 'Leaderboard',
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Handle leaderboard tap
            },
          ),
          buildListTile(
            icon: Icons.mail,
            text: 'Mail Us',
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Handle mail us tap
            },
          ),
          buildListTile(
            icon: Icons.info,
            text: 'About Us',
            onTap: () {
              Navigator.pop(context); // Close the drawer
              // Handle about us tap
            },
          ),
        ],
      ),
    );
  }

  Widget buildListTile({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(text, style: TextStyle(color: Colors.black87)),
      onTap: onTap,
    );
  }
}
