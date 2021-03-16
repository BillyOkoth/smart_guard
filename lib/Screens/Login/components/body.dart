import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smart_guard/Screens/Dashboard/components/bottom_nav_screen.dart';
import 'package:smart_guard/Screens/Login/components/background.dart';
import 'package:smart_guard/components/rounded_button.dart';
import 'package:smart_guard/components/rounded_input_field.dart';
import 'package:smart_guard/components/rounded_password_field.dart';
import 'package:smart_guard/constants.dart';




class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SMART GUARD ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 12,
                color: kPrimaryColor
              ),
            ),

            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/security.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(

              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context)=>BottomNavScreen())
                );
              },
            ),
            SizedBox(height: size.height * 0.03),
            // AlreadyHaveAnAccountCheck(
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}