import 'package:flutter/material.dart';
import 'package:smart_guard/Screens/Login/login_screen.dart';
import 'package:smart_guard/constants.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      automaticallyImplyLeading: false,      // leading: IconButton(
      //   icon: const Icon(Icons.menu),
      //   iconSize: 28.0,
      //   onPressed: () {},
      // ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.logout),
          iconSize: 28.0,
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>LoginScreen())
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
