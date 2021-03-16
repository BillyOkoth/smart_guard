import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/custom_app_bar.dart';
import 'package:smart_guard/constants.dart';
import 'package:date_field/date_field.dart';


class ReportsData extends StatelessWidget {
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
                  "Reports",
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
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.event_note,color: kPrimaryColor,),
                      hintText: "Select Date",
                      hintStyle: const TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      errorStyle: TextStyle(color: Colors.redAccent),


                    ),
                    mode: DateTimeFieldPickerMode.date,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) => (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
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
                        "Report Details",
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
              child:Row(
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child:  DataTable(

                          columns: const <DataColumn>[
                            DataColumn(
                              label: Text(
                                'NAME',
                                style: TextStyle(fontStyle: FontStyle.italic ,fontWeight:FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'TEL',
                                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'ID',
                                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'TEMP',
                                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'CAR',
                                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'DEPT',
                                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'REASON',
                                style: TextStyle(fontStyle: FontStyle.italic,fontWeight:FontWeight.bold),
                              ),
                            ),



                          ],
                          rows: const <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Text('Clinton Omondi')),
                                DataCell(Text('+254 712 083128')),
                                DataCell(Text('32324497'),
                                ),
                                DataCell(Text('33'),
                                ),
                                DataCell(Text('MERCEDES'),
                                ),
                                DataCell(Text('MARKETING'),
                                ),
                                DataCell(Text('Security '),
                                ),
                              ],
                            ),

                            // DataRow(
                            //   cells: <DataCell>[
                            //     DataCell(Text('William')),
                            //     DataCell(Text('27')),
                            //     DataCell(Text('Associate Professor')),
                            //   ],
                            // ),
                            // DataRow(
                            //   cells: <DataCell>[
                            //     DataCell(Text('William')),
                            //     DataCell(Text('27')),
                            //     DataCell(Text('Associate Professor')),
                            //   ],
                            // ),
                            // DataRow(
                            //   cells: <DataCell>[
                            //     DataCell(Text('William')),
                            //     DataCell(Text('27')),
                            //     DataCell(Text('Associate Professor')),
                            //   ],
                            // ),

                          ],
                        ),
                      ))
                ],
              ),
              // child: Expanded(
              //
              //   child:  Column(
              //     children: [
              //       DataTable(
              //
              //         columns: const <DataColumn>[
              //           DataColumn(
              //             label: Text(
              //               'Name',
              //               style: TextStyle(fontStyle: FontStyle.italic),
              //             ),
              //           ),
              //           DataColumn(
              //             label: Text(
              //               'Age',
              //               style: TextStyle(fontStyle: FontStyle.italic),
              //             ),
              //           ),
              //           DataColumn(
              //             label: Text(
              //               'Role',
              //               style: TextStyle(fontStyle: FontStyle.italic),
              //             ),
              //           ),
              //
              //         ],
              //         rows: const <DataRow>[
              //           DataRow(
              //             cells: <DataCell>[
              //               DataCell(Text('Sarah')),
              //               DataCell(Text('19')),
              //               DataCell(Text('Student')),
              //             ],
              //           ),
              //           DataRow(
              //             cells: <DataCell>[
              //               DataCell(Text('Janine')),
              //               DataCell(Text('43')),
              //               DataCell(Text('Professor')),
              //             ],
              //           ),
              //           DataRow(
              //             cells: <DataCell>[
              //               DataCell(Text('William')),
              //               DataCell(Text('27')),
              //               DataCell(Text('Associate Professor')),
              //             ],
              //           ),
              //
              //         ],
              //       ),
              //     ],
              //   )
              // )
            ),
          ),



        ],

      ),
    );
  }
}