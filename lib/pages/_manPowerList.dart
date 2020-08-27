import 'package:flutter/material.dart';
import 'package:myapp/colors.dart' as color;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return ListView.builder(
        itemCount: 9,
        physics: BouncingScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 0,
            margin: EdgeInsets.all(0),
            child: InkWell(
              onTap: () => {},
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 2.0),
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
                                    ),
                                    Container(
                                      // height: 40,
                                      decoration: BoxDecoration(
                                        color: color.secondary,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      margin: EdgeInsets.only(left: 8),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 4),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 2.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.phoneSquareAlt,
                                              size: 12,
                                            ),
                                          ),
                                          Text(
                                            '2 hrs ago',
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
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
          );
        });
  }
}
