import 'package:flutter/material.dart';
import 'package:myapp/colors.dart' as color;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/pages/_blogDetail.dart';

import 'jobDetail.dart';

class JobList extends StatelessWidget {
  const JobList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.bg,
      appBar: AppBar(
        backgroundColor: color.primary,
        title: Text('Jobs'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.search,
                size: 20,
              )),
          IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.sortAmountDown,
                size: 20,
              ))
        ],
      ),
      body: Lists(),
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: false,
      physics: BouncingScrollPhysics(),
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 6, 0, 0),
            child: Text(
              'Location',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[600]),
            ),
          ),
        ),
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: FlatButton(
                    onPressed: () {},
                    color: color.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Text('ALL (200)')),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: OutlineButton(
                    onPressed: () {},
                    color: color.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nepal (200)',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: OutlineButton(
                    onPressed: () {},
                    color: color.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'USA (10)',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: OutlineButton(
                    onPressed: () {},
                    color: color.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'China (20)',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4),
                child: OutlineButton(
                    onPressed: () {},
                    color: color.secondary,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'India (50)',
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    )),
              ),
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
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    margin: const EdgeInsets.fromLTRB(8, 0, 0, 0),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      'Labours',
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
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
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 60,
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
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
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                      style: TextStyle(color: Colors.grey[500], fontSize: 12),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => JobPage(),
            ));
          },
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {},
          child: Card(
            color: Colors.grey[200],
            elevation: 0,
            margin: EdgeInsets.all(2),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/job.jpg'))),
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
                                          '30 mins ago',
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
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
