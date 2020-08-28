import 'package:flutter/material.dart';
import 'package:myapp/colors.dart' as color;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/pages/_manPowerDetail.dart';

class manPowers extends StatelessWidget {
  const manPowers({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color.primary,
        title: Text('Manpowers'),
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
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 4),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
        Container(
          color: Colors.grey[200],
          margin: EdgeInsets.only(top: 1),
          child: InkWell(
            onTap: () => {
              // Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => manPowerDetail),
              // ),
            },
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 18),
                  height: 80,
                  width: 100,
                  child: Image.asset('images/hotel.jpg'),
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
                              'The River Overseas Pvt. Ltd',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.mapMarkerAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          'Nepal, Kathmandu',
                                          style: TextStyle(
                                            color: Colors.grey[600],
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    // height: 40,
                                    decoration: BoxDecoration(
                                      color: color.secondary,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    margin: EdgeInsets.only(left: 8),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 4),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 2.0),
                                          child: FaIcon(
                                            FontAwesomeIcons.phoneSquareAlt,
                                            color: Colors.grey[600],
                                            size: 12,
                                          ),
                                        ),
                                        Text(
                                          '9807090909',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[600]),
                                        ),
                                      ],
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}
