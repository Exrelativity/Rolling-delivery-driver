import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myapp/colors.dart' as color;
import 'package:myapp/pages/_banks.dart';
import 'package:myapp/pages/_blogDetail.dart';
import 'package:myapp/pages/_blogsList.dart';
import 'package:myapp/pages/_categoryList.dart';
import 'package:myapp/pages/_appliedSavedJob.dart';
import 'package:myapp/pages/_joblist.dart';
import 'package:myapp/pages/_latestNews.dart';
import 'package:myapp/pages/_manPowerDetail.dart';
import 'package:myapp/pages/_manPowerList.dart';
import 'package:myapp/pages/_newsDetail.dart';
import 'package:myapp/pages/_noticeDetail.dart';
import 'package:myapp/pages/_profile.dart';
import 'package:myapp/pages/jobDetail.dart';
import 'package:myapp/pages/noticeList.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _tabController;
  bool _isVisibleManpower = true;
  bool _isVisibleJob = false;

  final SwiperController _controller = SwiperController();
  final int _pageCount = 3;
  int _currentIndex = 0;
  void showHide($value) {
    setState(() {
      if ($value == 'manpower') {
        _isVisibleManpower = true;
        _isVisibleJob = false;
      } else {
        _isVisibleJob = true;
        _isVisibleManpower = false;
      }
    });
  }

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: color.primary,
        title: Text('Rolling Jobs'),
        elevation: 0,
        actions: <Widget>[
          // Bell Icon
          IconButton(
            icon: FaIcon(FontAwesomeIcons.globe),
            iconSize: 20,
            onPressed: () {},
          ),
          IconButton(
            icon: FaIcon(FontAwesomeIcons.userCircle),
            iconSize: 20,
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => profilePage(),
              ));
            },
          ),
        ],
      ),
      drawer: _buildDrawer(),
      body: ListView(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            child: Stack(
              children: [
                ClipPath(
                  child: Container(height: 60, color: color.primary),
                ),
                Container(
                  child: Swiper(
                    itemCount: 4,
                    pagination: SwiperPagination(),
                    autoplay: true,
                    autoplayDelay: 2,
                    itemHeight: 150,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage('images/banner.jpg'))),
                      );
                    },
                  ),
                )
              ],
            ),
          ),

          Container(
            height: 80,
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: color.primary,
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14.0, horizontal: 0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: FaIcon(
                            FontAwesomeIcons.bullhorn,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text('LT Number',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                OutlineButton(
                  borderSide: BorderSide(color: color.primary),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: FaIcon(
                            FontAwesomeIcons.idCard,
                            size: 18,
                            color: color.primary,
                          ),
                        ),
                        Text('Work Permit',
                            style: TextStyle(
                              fontSize: 12,
                              color: color.primary,
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                OutlineButton(
                  borderSide: BorderSide(color: color.primary),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 0.0, vertical: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 6.0),
                          child: FaIcon(
                            FontAwesomeIcons.questionCircle,
                            size: 18,
                            color: color.primary,
                          ),
                        ),
                        Text('Complains',
                            style: TextStyle(
                              fontSize: 12,
                              color: color.primary,
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // End button
          Container(
            color: color.secondary,
            height: 65,
            padding: EdgeInsets.only(top: 8),
            margin: EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4)),
                  onPressed: () => showHide("manpower"),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Search Man Powers...',
                        style: TextStyle(color: Colors.grey[500])),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                FlatButton(
                  color: color.primary,
                  onPressed: () => showHide("job"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text('Search Jobs...',
                        style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            ),
          ),
          _isVisibleManpower
              ? Container(
                  height: 120,
                  color: color.secondary,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 6, 0, 6),
                          child: Text(
                            'Locations',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                        ),
                      ),
                      Container(
                        height: 75,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => manPowers(),
                                        ));
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: color.primary),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'ALL',
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('ALL (200)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (100)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/ind.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('INDIA (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/ind.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('INDIA (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/ind.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('INDIA (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  height: 240,
                  color: color.secondary,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 6, 0, 6),
                          child: Text(
                            'Locations',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                        ),
                      ),
                      Container(
                        height: 75,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.of(context)
                                            .push(MaterialPageRoute(
                                          builder: (context) => manPowers(),
                                        ));
                                      },
                                      child: Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          border:
                                              Border.all(color: color.primary),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                        ),
                                        child: Center(
                                            child: Text(
                                          'ALL',
                                          style: TextStyle(
                                              color: Colors.grey[500],
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('ALL (200)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (100)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/ind.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('INDIA (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/ind.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('INDIA (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/ind.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('INDIA (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 4),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(100)),
                                          image: DecorationImage(
                                              image: ExactAssetImage(
                                                  'images/flags/nep.png'))),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text('NEPAL (60)',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey[500],
                                        )),
                                  ],
                                )),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(16, 6, 0, 6),
                          child: Text(
                            'Categories',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600]),
                          ),
                        ),
                      ),
                      Container(
                        // padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                        height: 80,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) => JobList(),
                                    ));
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 60,
                                    margin:
                                        const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                    width: 60,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.amber),
                                      borderRadius: BorderRadius.circular(80),
                                    ),
                                    child: FaIcon(
                                      FontAwesomeIcons.personBooth,
                                      size: 24,
                                      color: Colors.amber,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Labours',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.redAccent),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.handHoldingMedical,
                                    size: 24,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Healths',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(color: Colors.blueGrey),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.code,
                                    size: 24,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'IT',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.utensils,
                                    size: 24,
                                    color: Colors.green,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Cook',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.lime),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.userLock,
                                    size: 24,
                                    color: Colors.lime,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Security',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 60,
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.redAccent),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.handHoldingMedical,
                                    size: 24,
                                    color: Colors.redAccent,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Healths',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(80),
                                    border: Border.all(color: Colors.blueGrey),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.code,
                                    size: 24,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'IT',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.green),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.utensils,
                                    size: 24,
                                    color: Colors.green,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Cook',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  alignment: Alignment.center,
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.lime),
                                    borderRadius: BorderRadius.circular(80),
                                  ),
                                  child: FaIcon(
                                    FontAwesomeIcons.userLock,
                                    size: 24,
                                    color: Colors.lime,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Security',
                                    style: TextStyle(
                                        color: Colors.grey[500], fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          Container(
            height: 65,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.moneyBillWave,
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Exchange Rate',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                FlatButton(
                  color: color.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 10),
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.calendarDay,
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text('Date Converter',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0),
            child: Container(
              // color: color.secondary,
              width: double.infinity,
              height: 80,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return _bankLists(context);
                },
              ),
            ),
          ),

          // Recently Added Job Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: color.primary,
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Text(
                    'Recently Added Job',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => JobList(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: color.primary)),
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(color: color.primary, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),

          Card(
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: color.secondary,
            child: InkWell(
              onTap: () => {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => JobPage()))
              },
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 18),
                    height: 80,
                    width: 100,
                    child: Image.asset('images/job.jpg'),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hotel & Resturant',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Company Name',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.mapMarkerAlt,
                                          size: 12,
                                        ),
                                      ),
                                      Text(
                                        'Nepal, Kathmandu',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.clock,
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '2 hrs, 30 min',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.heart,
                                color: Colors.grey[500],
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Card(
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: color.secondary,
            child: InkWell(
              onTap: () => {},
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 18),
                    height: 80,
                    width: 100,
                    child: Image.asset('images/job.jpg'),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      width: double.infinity,
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hotel & Resturant',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  'Company Name',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.mapMarkerAlt,
                                          size: 12,
                                        ),
                                      ),
                                      Text(
                                        'Nepal, Kathmandu',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.clock,
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '2 hrs, 30 min',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.heart,
                                color: Colors.grey[500],
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          // Column(
          //   children: <Widget>[
          //     Container(
          //       height: 50,
          //       child: TabBar(
          //         tabs: [
          //           Tab(
          //             text: "Manpower",
          //           ),
          //           Tab(text: "Embassy")
          //         ],
          //         indicatorColor: color.primary,
          //         labelColor: color.primary,
          //         controller: _tabController,
          //       ),
          //     ),
          //     Container(
          //       height: 220,
          //       child:
          //           TabBarView(controller: _tabController, children: <Widget>[
          //         Container(
          //           child: Column(
          //             children: [
          //               Card(
          //                 elevation: 0,
          //                 margin: EdgeInsets.all(0),
          //                 child: InkWell(
          //                   onTap: () => {
          //                     Navigator.of(context).push(MaterialPageRoute(
          //                       builder: (context) => manPowerDetail(),
          //                     ))
          //                   },
          //                   child: Row(
          //                     children: [
          //                       Container(
          //                         padding: EdgeInsets.only(left: 18),
          //                         height: 80,
          //                         width: 100,
          //                         child: Image.asset('images/hotel.jpg'),
          //                       ),
          //                       Expanded(
          //                         child: Container(
          //                           padding: EdgeInsets.only(left: 15),
          //                           width: double.infinity,
          //                           child: Row(
          //                             children: [
          //                               Column(
          //                                 crossAxisAlignment:
          //                                     CrossAxisAlignment.start,
          //                                 children: [
          //                                   Text(
          //                                     'The River Overseas Pvt. Ltd',
          //                                     style: TextStyle(
          //                                         fontSize: 18,
          //                                         fontWeight: FontWeight.bold),
          //                                   ),
          //                                   Padding(
          //                                     padding:
          //                                         const EdgeInsets.symmetric(
          //                                             vertical: 8.0),
          //                                     child: Row(
          //                                       mainAxisAlignment:
          //                                           MainAxisAlignment.start,
          //                                       children: [
          //                                         Container(
          //                                           // height: 40,
          //                                           decoration: BoxDecoration(
          //                                             color: color.secondary,
          //                                             borderRadius:
          //                                                 BorderRadius.all(
          //                                                     Radius.circular(
          //                                                         10)),
          //                                           ),
          //                                           padding:
          //                                               EdgeInsets.symmetric(
          //                                                   horizontal: 10,
          //                                                   vertical: 4),
          //                                           child: Row(
          //                                             children: [
          //                                               Padding(
          //                                                 padding:
          //                                                     const EdgeInsets
          //                                                             .only(
          //                                                         right: 2.0),
          //                                                 child: FaIcon(
          //                                                   FontAwesomeIcons
          //                                                       .mapMarkerAlt,
          //                                                   size: 12,
          //                                                 ),
          //                                               ),
          //                                               Text(
          //                                                 'Nepal, Kathmandu',
          //                                                 style: TextStyle(
          //                                                   fontSize: 12,
          //                                                 ),
          //                                               ),
          //                                             ],
          //                                           ),
          //                                         ),
          //                                         Container(
          //                                           // height: 40,
          //                                           decoration: BoxDecoration(
          //                                             color: color.secondary,
          //                                             borderRadius:
          //                                                 BorderRadius.all(
          //                                                     Radius.circular(
          //                                                         10)),
          //                                           ),
          //                                           margin: EdgeInsets.only(
          //                                               left: 8),
          //                                           padding:
          //                                               EdgeInsets.symmetric(
          //                                                   horizontal: 10,
          //                                                   vertical: 4),
          //                                           child: Row(
          //                                             children: [
          //                                               Padding(
          //                                                 padding:
          //                                                     const EdgeInsets
          //                                                             .only(
          //                                                         right: 2.0),
          //                                                 child: FaIcon(
          //                                                   FontAwesomeIcons
          //                                                       .phoneSquareAlt,
          //                                                   size: 12,
          //                                                 ),
          //                                               ),
          //                                               Text(
          //                                                 '2 hrs ago',
          //                                                 style: TextStyle(
          //                                                   fontSize: 12,
          //                                                 ),
          //                                               ),
          //                                             ],
          //                                           ),
          //                                         ),
          //                                       ],
          //                                     ),
          //                                   )
          //                                 ],
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       )
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               Divider(),
          //               Card(
          //                 elevation: 0,
          //                 margin: EdgeInsets.all(0),
          //                 child: InkWell(
          //                   onTap: () => {},
          //                   child: Row(
          //                     children: [
          //                       Container(
          //                         padding: EdgeInsets.only(left: 18),
          //                         height: 80,
          //                         width: 100,
          //                         child: Image.asset('images/hotel.jpg'),
          //                       ),
          //                       Expanded(
          //                         child: Container(
          //                           padding: EdgeInsets.only(left: 15),
          //                           width: double.infinity,
          //                           child: Row(
          //                             children: [
          //                               Column(
          //                                 crossAxisAlignment:
          //                                     CrossAxisAlignment.start,
          //                                 children: [
          //                                   Text(
          //                                     'The River Overseas Pvt. Ltd',
          //                                     style: TextStyle(
          //                                         fontSize: 18,
          //                                         fontWeight: FontWeight.bold),
          //                                   ),
          //                                   Padding(
          //                                     padding:
          //                                         const EdgeInsets.symmetric(
          //                                             vertical: 8.0),
          //                                     child: Row(
          //                                       mainAxisAlignment:
          //                                           MainAxisAlignment.start,
          //                                       children: [
          //                                         Container(
          //                                           // height: 40,
          //                                           decoration: BoxDecoration(
          //                                             color: color.secondary,
          //                                             borderRadius:
          //                                                 BorderRadius.all(
          //                                                     Radius.circular(
          //                                                         10)),
          //                                           ),
          //                                           padding:
          //                                               EdgeInsets.symmetric(
          //                                                   horizontal: 10,
          //                                                   vertical: 4),
          //                                           child: Row(
          //                                             children: [
          //                                               Padding(
          //                                                 padding:
          //                                                     const EdgeInsets
          //                                                             .only(
          //                                                         right: 2.0),
          //                                                 child: FaIcon(
          //                                                   FontAwesomeIcons
          //                                                       .mapMarkerAlt,
          //                                                   size: 12,
          //                                                 ),
          //                                               ),
          //                                               Text(
          //                                                 'Nepal, Kathmandu',
          //                                                 style: TextStyle(
          //                                                   fontSize: 12,
          //                                                 ),
          //                                               ),
          //                                             ],
          //                                           ),
          //                                         ),
          //                                         Container(
          //                                           // height: 40,
          //                                           decoration: BoxDecoration(
          //                                             color: color.secondary,
          //                                             borderRadius:
          //                                                 BorderRadius.all(
          //                                                     Radius.circular(
          //                                                         10)),
          //                                           ),
          //                                           margin: EdgeInsets.only(
          //                                               left: 8),
          //                                           padding:
          //                                               EdgeInsets.symmetric(
          //                                                   horizontal: 10,
          //                                                   vertical: 4),
          //                                           child: Row(
          //                                             children: [
          //                                               Padding(
          //                                                 padding:
          //                                                     const EdgeInsets
          //                                                             .only(
          //                                                         right: 2.0),
          //                                                 child: FaIcon(
          //                                                   FontAwesomeIcons
          //                                                       .phoneSquareAlt,
          //                                                   size: 12,
          //                                                 ),
          //                                               ),
          //                                               Text(
          //                                                 '2 hrs ago',
          //                                                 style: TextStyle(
          //                                                   fontSize: 12,
          //                                                 ),
          //                                               ),
          //                                             ],
          //                                           ),
          //                                         ),
          //                                       ],
          //                                     ),
          //                                   )
          //                                 ],
          //                               ),
          //                             ],
          //                           ),
          //                         ),
          //                       ),
          //                     ],
          //                   ),
          //                 ),
          //               ),
          //               InkWell(
          //                 onTap: () {
          //                   Navigator.of(context).push(MaterialPageRoute(
          //                     builder: (context) => manPowers(),
          //                   ));
          //                 },
          //                 child: Container(
          //                     margin: EdgeInsets.symmetric(horizontal: 16),
          //                     padding: EdgeInsets.symmetric(vertical: 8),
          //                     decoration: BoxDecoration(
          //                         borderRadius:
          //                             BorderRadius.all(Radius.circular(4)),
          //                         border: Border.all(
          //                           color: color.primary,
          //                         )),
          //                     child: Row(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       children: [
          //                         Text(
          //                           'SEE ALL',
          //                           style: TextStyle(
          //                               color: Colors.grey[500],
          //                               fontWeight: FontWeight.bold),
          //                         ),
          //                         SizedBox(
          //                           width: 4,
          //                         ),
          //                         FaIcon(
          //                           FontAwesomeIcons.arrowAltCircleRight,
          //                           size: 18,
          //                           color: Colors.grey[500],
          //                         )
          //                       ],
          //                     )),
          //               ),
          //             ],
          //           ),
          //         ),
          //         Container(
          //           child: Text("sign up"),
          //         )
          //       ]),
          //     )
          //   ],
          // ),

          // Start Latest News
          // Recently Added Job Start
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: color.primary,
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Text(
                    'Latest News',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => latestNews(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: color.primary)),
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(color: color.primary, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: color.bg,
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => newsDetail(),
                  )),
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Government looks for more loans',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'While the government response to the virus has not been up to the mark, it has also failed to ensure risk communication and make...',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 2.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.asterisk,
                                        color: Colors.grey,
                                        size: 12,
                                      ),
                                    ),
                                    Text(
                                      'ekantipur.com',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.clock,
                                          color: Colors.grey,
                                          size: 12,
                                        ),
                                      ),
                                      Text(
                                        '30 min ago',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildThumbnail(),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: color.bg,
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () => {},
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Government looks for more loans',
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'While the government response to the virus has not been up to the mark, it has also failed to ensure risk communication and make...',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 2.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.asterisk,
                                        color: Colors.grey,
                                        size: 12,
                                      ),
                                    ),
                                    Text(
                                      'ekantipur.com',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 2.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.clock,
                                          color: Colors.grey,
                                          size: 12,
                                        ),
                                      ),
                                      Text(
                                        '30 min ago',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    _buildThumbnail(),
                  ],
                ),
              ),
            ),
          ),
          // End News section

          // Start Notice
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: color.primary,
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Text(
                    'Notices',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => noticeList(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: color.primary)),
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(color: color.primary, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: color.bg,
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => noticeDetail(),
                  )),
                },
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Health workers under attack as lack of nder attack as lack of',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'While the government response to the virus has not been up to the mark, it has also failed to ensure risk communication and make...',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '26 July, 2020',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleDoubleRight,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Card(
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: color.bg,
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () => {},
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Health workers under attack as lack of nder attack as lack of',
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Text(
                                'While the government response to the virus has not been up to the mark, it has also failed to ensure risk communication and make...',
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        '26 July, 2020',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    FaIcon(
                      FontAwesomeIcons.angleDoubleRight,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ),
          // End notice
          // Start Blog section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18.0, vertical: 18),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                      color: color.primary,
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  child: Text(
                    'Blogs',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => blogLists(),
                  ));
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(color: color.primary)),
                  child: Text(
                    'SEE ALL',
                    style: TextStyle(color: color.primary, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 420,
            child: new Swiper(
              itemBuilder: (BuildContext context, int index) {
                return _buildBlog(context);
              },
              index: _currentIndex,
              loop: false,
              onIndexChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.grey, activeColor: color.primary)),
              controller: _controller,
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildNavBar(),
    );
  }
}

Widget _buildBlog(context) {
  return InkWell(
    onTap: () {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => blogDetail(),
      ));
    },
    child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'images/hotel.jpg',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                'I can’t think of any use ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 4.0),
                        child: FaIcon(
                          FontAwesomeIcons.user,
                          color: Colors.grey,
                          size: 12,
                        ),
                      ),
                      Text('Rolling Plans',
                          style: TextStyle(color: Colors.grey))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 4.0),
                          child: FaIcon(
                            FontAwesomeIcons.clock,
                            color: Colors.grey,
                            size: 12,
                          ),
                        ),
                        Text('26 july, 2020',
                            style: TextStyle(color: Colors.grey))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Honestly, I can’t think of any use cases where you might want to use Min setting. I have never used this setting myself. I did try to use in nested Columns and Rows but it doesn’t really work as you expect it to, Min is completely ignored in nested Columns and Rows because you will use Expanded widget which will force the children to as big as possible. ',
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            )
          ],
        )),
  );
}

Container _buildThumbnail() {
  return Container(
    padding: EdgeInsets.only(left: 18),
    height: 90,
    width: 100,
    child: Image.asset('images/kantipur-2.jpg'),
  );
}

Widget _bankLists(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => bankLists(),
        ));
      },
      child: Container(
        height: 40,
        width: 80,
        margin: EdgeInsets.fromLTRB(15, 0, 0, 2),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                blurRadius: 7,
                color: Colors.grey.withOpacity(.5),
                spreadRadius: 2,
                offset: Offset(0, 3),
              ),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.moneyBillWave,
              color: Colors.orange,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'Bank',
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _buildNavBar() {
  return BottomNavigationBar(
    selectedItemColor: color.primary,
    unselectedItemColor: Colors.grey,
    currentIndex: 0,
    showUnselectedLabels: false,
    onTap: (i) {},
    items: [
      BottomNavigationBarItem(
        icon: FaIcon(
          FontAwesomeIcons.home,
        ),
        title: Text('Home'),
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.shoppingBag),
        title: Text('Recommended Jobs'),
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.star),
        title: Text('Jobs'),
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.newspaper),
        title: Text('News'),
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.ellipsisV),
        title: Text('More'),
      ),
    ],
  );
}

class _buildDrawer extends StatelessWidget {
  const _buildDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: [
          DrawerHeader(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              height: 90,
              alignment: Alignment.centerLeft,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/user.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text('Prajwal Rai',
                        style: TextStyle(color: Colors.white, fontSize: 16)),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: color.primary,
              // image: DecorationImage(
              //     fit: BoxFit.cover, image: AssetImage('images/blog.jpg'))
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              color: color.secondary,
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.home,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Home',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.building,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Manpowers',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.moneyBillWave,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Money Exchange Rate',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.newspaper,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('News',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.globe,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Languages',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.userCircle,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Profile',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.bell,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Notifications',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.questionCircle,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('FAQ',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.phoneSquareAlt,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Contact Us',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.exclamationCircle,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('About Us',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
            child: FlatButton(
              onPressed: () {},
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.powerOff,
                    size: 16,
                    color: color.primary,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('Log Out',
                        style: TextStyle(fontSize: 16, color: color.primary)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
