import 'package:flutter/material.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/custom_app_bar.dart';
import 'package:smart_guard/constants.dart';

class PasswordPage extends StatefulWidget {
  @override
  PasswordPageState createState() => PasswordPageState();
}

class PasswordPageState extends State<PasswordPage> {
  bool showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                " Password Reset",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              // Center(
              //   child: Stack(
              //     children: [
              //       Container(
              //         width: 130,
              //         height: 130,
              //         decoration: BoxDecoration(
              //             border: Border.all(
              //                 width: 4,
              //                 color: Theme.of(context).scaffoldBackgroundColor),
              //             boxShadow: [
              //               BoxShadow(
              //                   spreadRadius: 2,
              //                   blurRadius: 10,
              //                   color: Colors.black.withOpacity(0.1),
              //                   offset: Offset(0, 10))
              //             ],
              //             shape: BoxShape.circle,
              //             image: DecorationImage(
              //                 fit: BoxFit.cover,
              //                 image: NetworkImage(
              //                   "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
              //                 ))),
              //       ),
              //       Positioned(
              //           bottom: 0,
              //           right: 0,
              //           child: Container(
              //             height: 40,
              //             width: 40,
              //             decoration: BoxDecoration(
              //               shape: BoxShape.circle,
              //               border: Border.all(
              //                 width: 4,
              //                 color: Theme.of(context).scaffoldBackgroundColor,
              //               ),
              //               color: kPrimaryColor,
              //             ),
              //             child: Icon(
              //               Icons.edit,
              //               color: Colors.white,
              //             ),
              //           )),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Current Password", "Dor Alex", false),
              buildTextField("New Password", "Dor Alex", false),
              buildTextField("Confirm Password", "alexd@gmail.com", false),

              SizedBox(
                height: 55,
              ),
              GestureDetector(
                onTap: (){},

                child:    Card(
                  color: kPrimaryColor,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),

                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,

                              children: [
                                Container(height: 40.0,
                                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        "SAVE",

                                        style: new TextStyle(fontSize: 20.0,  fontWeight: FontWeight.bold,color: Colors.white),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(Icons.save ,color: Colors.white,),
                                    ],
                                  ),



                                ),

                              ]),)





                      ],
                    ),

                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }


  Widget buildTextField(
      String labelText, String placeholder, bool isPasswordTextField) {
    return   Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextFormField(
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
          decoration: InputDecoration(
            border: InputBorder.none,
            // prefixIcon: Icon(Icons.car_rental,color: kPrimaryColor,),
            hintText:labelText,
            hintStyle: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ) ,
        ),
      ),
    );
  }
}

//   Widget buildTextField1(
//       String labelText, String placeholder, bool isPasswordTextField) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 35.0),
//       child: TextField(
//         obscureText: isPasswordTextField ? showPassword : false,
//         decoration: InputDecoration(
//             suffixIcon: isPasswordTextField
//                 ? IconButton(
//               onPressed: () {
//                 setState(() {
//                   showPassword = !showPassword;
//                 });
//               },
//               icon: Icon(
//                 Icons.remove_red_eye,
//                 color: Colors.grey,
//               ),
//             )
//                 : null,
//             contentPadding: EdgeInsets.only(bottom: 3),
//             labelText: labelText,
//             floatingLabelBehavior: FloatingLabelBehavior.always,
//             hintText: placeholder,
//             hintStyle: TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             )),
//       ),
//     );
//   }
// }