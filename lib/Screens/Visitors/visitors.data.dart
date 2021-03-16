import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/custom_app_bar.dart';
import 'package:smart_guard/constants.dart';


class VisitorsData extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
         slivers: [

           SliverPadding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
             sliver: SliverToBoxAdapter(
               child:  Padding(
                 padding: const EdgeInsets.all(16),
                 child: Text(
                   "Visitor Details",
                   style: const TextStyle(
                     fontSize: 22.0,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ),
           ),
           SliverPadding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
             sliver: SliverToBoxAdapter(
               child:   Card(
                 elevation: 4,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(16),
                 ),
                 margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8),
                   child: TextField(
                     decoration: InputDecoration(
                       border: InputBorder.none,
                       prefixIcon: Icon(Icons.search,color: kPrimaryColor,),
                       hintText: "Search",
                       hintStyle: const TextStyle(
                         fontSize: 18.0,
                         fontWeight: FontWeight.bold,
                       ),
                     ),
                   ),
                 ),
               ),
             ),
           ),
           SliverPadding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
             sliver: SliverToBoxAdapter(
               child:   Padding(
                   padding: const EdgeInsets.all(16),
                   child: Row(
                     children: <Widget>[
                       Text(
                         "Capture Visitors Details",
                         style: const TextStyle(
                           fontSize: 18.0,
                           fontWeight: FontWeight.bold,
                         ),
                       ),

                     ],
                   )),
             ),
           ),
           SliverPadding(
             padding: const EdgeInsets.symmetric(horizontal: 10.0),
             sliver: SliverToBoxAdapter(
               child:    Expanded(
                 child:
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Form(
                           key: _formKey,
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Card(
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
                                       prefixIcon: Icon(Icons.supervised_user_circle,color: kPrimaryColor,),
                                       hintText: "First Name",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
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
                                       prefixIcon: Icon(Icons.supervised_user_circle,color: kPrimaryColor,),
                                       hintText: "Last Name",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
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
                                       prefixIcon: Icon(Icons.supervised_user_circle,color: kPrimaryColor,),
                                       hintText: "Id Number",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
                                 elevation: 4,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(16),
                                 ),
                                 margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 8),
                                   child: IntlPhoneField(
                                     decoration: InputDecoration(
                                       labelText: 'Phone Number',
                                       border: InputBorder.none,
                                       labelStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                       prefixIcon: Icon(Icons.phone,color: kPrimaryColor,),

                                       // border: OutlineInputBorder(
                                       //   borderSide: BorderSide(),
                                       // ),
                                     ),
                                     onChanged: (phone) {
                                       print(phone.completeNumber);
                                     },
                                   ),
                                   // child: TextFormField(
                                   //   validator: (value) {
                                   //     if (value.isEmpty) {
                                   //       return 'Please enter some text';
                                   //     }
                                   //     return null;
                                   //   },
                                   //   decoration: InputDecoration(
                                   //     border: InputBorder.none,
                                   //     prefixIcon: Icon(Icons.phone),
                                   //     hintText: "Phone Number",
                                   //     hintStyle: const TextStyle(
                                   //       fontSize: 18.0,
                                   //       fontWeight: FontWeight.bold,
                                   //     ),
                                   //   ) ,
                                   // ),
                                 ),
                               ),
                               Card(
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
                                       prefixIcon: Icon(Icons.device_thermostat,color: kPrimaryColor,),
                                       hintText: "Body Temperature",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
                                 elevation: 4,
                                 shape: RoundedRectangleBorder(
                                   borderRadius: BorderRadius.circular(16),
                                 ),
                                 margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                 child: Padding(
                                   padding: const EdgeInsets.symmetric(horizontal: 8),
                                   child: DropdownButtonFormField(

                                     items: <String>['Marketing', 'It', 'Account-Opening']
                                         .map<DropdownMenuItem<String>>((String value) {
                                       return DropdownMenuItem<String>(
                                         value: value,
                                         child: Text(value),
                                       );
                                     }).toList(),

                                     validator: (value) {
                                       if (value.isEmpty) {
                                         return 'Please enter some text';
                                       }
                                       return null;
                                     },
                                     decoration: InputDecoration(
                                       border: InputBorder.none,
                                       prefixIcon: Icon(Icons.group,color: kPrimaryColor,),
                                       hintText: "Department",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
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
                                       prefixIcon: Icon(Icons.car_rental,color: kPrimaryColor,),
                                       hintText: "Car Registration",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
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
                                       prefixIcon: Icon(Icons.laptop,color: kPrimaryColor,),
                                       hintText: "Laptop Serial",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),
                               Card(
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
                                       prefixIcon: Icon(Icons.add,color: kPrimaryColor,),
                                       hintText: "Reason For Visiting",
                                       hintStyle: const TextStyle(
                                         fontSize: 18.0,
                                         fontWeight: FontWeight.bold,
                                       ),
                                     ) ,
                                   ),
                                 ),
                               ),

                               SizedBox(
                                 height: 30,
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






                               // Card(
                               //   elevation: 4,
                               //   shape: RoundedRectangleBorder(
                               //     borderRadius: BorderRadius.circular(16),
                               //   ),
                               //   margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                               //   child:  Padding(
                               //     padding: const EdgeInsets.symmetric(vertical: 16.0),
                               //     child: RaisedButton(
                               //       color: kPrimaryColor,
                               //
                               //       onPressed: (){
                               //         if (_formKey.currentState.validate()) {
                               //           // If the form is valid, display a Snackbar.
                               //           Scaffold.of(context)
                               //               .showSnackBar(SnackBar(content: Text('Processing Data')));
                               //         }
                               //       },
                               //       textColor: Colors.white,
                               //       child: Text('SAVE',style: const TextStyle(
                               //         fontSize: 18.0,
                               //         fontWeight: FontWeight.bold,
                               //       ),),
                               //
                               //
                               //     ),)
                               // ),



                             ],
                           ),
                         ),

                       ],
                     ),


               ),
             ),
           ),


         ],

      ),
    );
  }
}