import 'package:flutter/material.dart';
import 'package:smart_guard/Screens/Dashboard/components/body.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats_screen.dart';



class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatsScreen(),
    );
  }
}