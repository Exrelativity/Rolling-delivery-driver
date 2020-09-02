import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:myapp/colors.dart' as color;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Weekly Summary'),
            // Enable legend
            // legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                  dataSource: <SalesData>[
                    SalesData('Sun', 35),
                    SalesData('Mon', 28),
                    SalesData('Tue', 34),
                    SalesData('Wed', 32),
                    SalesData('Thu', 40),
                    SalesData('Fri', 40),
                    SalesData('Sat', 100)
                  ],
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]),
        Column(
          children: <Widget>[
            Container(
              height: 50,
              child: TabBar(
                indicatorColor: color.primary,
                labelColor: Colors.white,
                labelStyle: TextStyle(fontSize: 14),
                unselectedLabelColor: color.primary,
                controller: _tabController,
                indicator: BoxDecoration(
                    color: color.primary,
                    borderRadius: BorderRadius.all(Radius.circular(4))),
                tabs: [
                  Tab(
                    text: "TODAY",
                  ),
                  Tab(text: "WEEEKLY"),
                  Tab(text: "MONTHLY"),
                  Tab(text: "LIFETIME"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 14),
              height: 200,
              child: TabBarView(controller: _tabController, children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              color: Color(0xffade8f4),
                              child: Container(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Earnings',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.black54))),
                                    Text('Rs 5,000.00',
                                        style: GoogleFonts.robotoCondensed(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              color: Color(0xffcaffbf),
                              child: Container(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Delivered',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.black54))),
                                    Text('5',
                                        style: GoogleFonts.robotoCondensed(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              color: Color(0xfff8edeb),
                              child: Container(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Ongoing',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.black54))),
                                    Text('2',
                                        style: GoogleFonts.robotoCondensed(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Expanded(
                            child: FlatButton(
                              onPressed: () {},
                              color: Color(0xffffb5a7),
                              child: Container(
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Cancelled',
                                        style: GoogleFonts.poppins(
                                            textStyle: TextStyle(
                                                color: Colors.black54))),
                                    Text('2',
                                        style: GoogleFonts.robotoCondensed(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black54,
                                                fontWeight: FontWeight.bold))),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text("sign up"),
                ),
                Container(
                  child: Text("sign up"),
                ),
                Container(
                  child: Text("sign up"),
                ),
              ]),
            )
          ],
        ),
      ],
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
