import 'dart:async';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myapp/colors.dart' as color;

class OrderPage extends StatefulWidget {
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 416,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Column(
              children: [
                IconButton(
                  splashColor: color.secondary,
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.angleDoubleDown,
                    size: 14,
                    color: Colors.grey[500],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 4),
                  child: Row(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(60)),
                            image: DecorationImage(
                                image: ExactAssetImage("images/user.png"))),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Prajwal Rai',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 20, color: Colors.grey[500])),
                          ),
                          Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapMarkerAlt,
                                size: 12,
                                color: Colors.grey[500],
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Kathmandu, Nepal',
                                style: GoogleFonts.robotoCondensed(
                                    textStyle:
                                        TextStyle(color: Colors.grey[500])),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mapMarkedAlt,
                        color: Colors.green,
                        size: 18,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'PICKUP',
                                style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                alignment: Alignment.center,
                                height: 18,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50)),
                                  color: Colors.red,
                                ),
                                child: Text(
                                  'urgent',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.peopleCarry,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'Documents',
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.weightHanging,
                                      size: 14,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      '10 files',
                                      style: GoogleFonts.poppins(
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                                text: "NewRoad Kathmandu, Nepal",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "- 5 km away",
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontSize: 12))
                                ]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26.0, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.mapMarkedAlt,
                        color: Colors.red,
                        size: 18,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'DESTINATION',
                                style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        color: Colors.grey[500],
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: RichText(
                              text: TextSpan(
                                  text: "Baneshwor Kathmandu, Nepal",
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "- 15 km away",
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 12))
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TIPS',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            'Rs. 1,000.00',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DISTANCE',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            '1KM 300M',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'TOTAL TIME',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500)),
                          ),
                          Text(
                            '30min 40sec',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.red,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('REJECT RIDE',
                              style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: FlatButton(
                        onPressed: () {},
                        color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12.0),
                          child: Text('ACCEPT RIDE',
                              style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold))),
                        ),
                      ),
                    )
                  ],
                )
                // DottedLine(
                //   dashColor: Colors.grey,
                //   dashGapColor: Colors.white,
                //   dashGapLength: 4,
                //   dashLength: 4,
                //   lineLength: 50,
                //   direction: Axis.vertical,
                // ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
