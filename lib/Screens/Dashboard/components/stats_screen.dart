import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/data_bar_chart.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/custom_app_bar.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/pie_chart.dart';
import 'package:smart_guard/Screens/Dashboard/components/stats/stats_grid.dart';
import 'package:smart_guard/constants.dart';

import '../../../data.dart';

class StatsScreen extends StatefulWidget {
  @override
  _StatsScreenState createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: kPrimaryLightColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          // _buildRegionTabBar(),
          // _buildStatsTabBar(),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverToBoxAdapter(
              child: PieChartSample2(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(left: 15.0,top: 15.0,right: 15.0),
            sliver: SliverToBoxAdapter(
              child: DataBarChart(covidCases: covidUSADailyNewCases),
            ),
          ),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Statistics',
           style: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }

  // SliverToBoxAdapter _buildRegionTabBar() {
  //   return SliverToBoxAdapter(
  //     child: DefaultTabController(
  //       length: 2,
  //       child: Container(
  //         margin: const EdgeInsets.symmetric(horizontal: 20.0),
  //         height: 50.0,
  //         decoration: BoxDecoration(
  //           color: Colors.white24,
  //           borderRadius: BorderRadius.circular(25.0),
  //         ),
  //         child: TabBar(
  //           indicator: BubbleTabIndicator(
  //             tabBarIndicatorSize: TabBarIndicatorSize.tab,
  //             indicatorHeight: 40.0,
  //             indicatorColor: Colors.white,
  //           ),
  //           // labelStyle: Styles.tabTextStyle,
  //           labelColor: Colors.black,
  //           unselectedLabelColor: Colors.white,
  //           tabs: <Widget>[
  //             Text('My Country'),
  //             Text('Global'),
  //           ],
  //           onTap: (index) {},
  //         ),
  //       ),
  //     ),
  //   );
  // }

  SliverPadding _buildStatsTabBar() {
    return SliverPadding(
      padding: const EdgeInsets.all(20.0),
      sliver: SliverToBoxAdapter(
        child: DefaultTabController(
          length: 3,
          child: TabBar(
            indicatorColor: Colors.transparent,
            // labelStyle: Styles.tabTextStyle,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white60,
            tabs: <Widget>[
              Text('Total'),
              Text('Today'),
              Text('Yesterday'),
            ],
            onTap: (index) {},
          ),
        ),
      ),
    );
  }
}
