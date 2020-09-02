import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/colors.dart' as color;
import 'package:dotted_line/dotted_line.dart';

class History extends StatefulWidget {
  History({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sat May, 2020',
              style: GoogleFonts.robotoCondensed(
                textStyle:
                    TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
              ),
            ),
          ),
        ),
        Container(
          height: 40,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    // border: Border.all(color: Colors.grey),
                    color: color.primary,
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 80,
                width: 40,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(150))),
                child: Center(
                  child: Text(
                    '1',
                    style: GoogleFonts.robotoSlab(
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              'TOTAL EARN (5 rides)',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
            ),
          ),
        ),
        Center(
          child: Text('Rs. 5,000.00',
              style: GoogleFonts.robotoCondensed(
                  textStyle:
                      TextStyle(fontSize: 26, fontWeight: FontWeight.bold))),
        ),
        SizedBox(
          height: 5,
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Bashantpur, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: DottedLine(
                    dashLength: 3,
                    dashGapLength: 3,
                    lineThickness: 2,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.white,
                    direction: Axis.vertical,
                    lineLength: 20,
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Baneshwor Bijulibazzar, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Booking ID : 43A4FE2355',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                        Text('Time : 21 Jan, 2020 at 10:30 AM',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    Text('Rs 1,000.00',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Bashantpur, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: DottedLine(
                    dashLength: 3,
                    dashGapLength: 3,
                    lineThickness: 2,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.white,
                    direction: Axis.vertical,
                    lineLength: 20,
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Baneshwor Bijulibazzar, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Booking ID : 43A4FE2355',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                        Text('Time : 21 Jan, 2020 at 10:30 AM',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    Text('Rs 1,000.00',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Bashantpur, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: DottedLine(
                    dashLength: 3,
                    dashGapLength: 3,
                    lineThickness: 2,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.white,
                    direction: Axis.vertical,
                    lineLength: 20,
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Baneshwor Bijulibazzar, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Booking ID : 43A4FE2355',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                        Text('Time : 21 Jan, 2020 at 10:30 AM',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    Text('Rs 1,000.00',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Bashantpur, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
                  child: DottedLine(
                    dashLength: 3,
                    dashGapLength: 3,
                    lineThickness: 2,
                    dashColor: Colors.grey,
                    dashGapColor: Colors.white,
                    direction: Axis.vertical,
                    lineLength: 20,
                  ),
                ),
                Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      size: 18,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text('12 Baneshwor Bijulibazzar, Kathmandu',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[500], fontSize: 18))),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Booking ID : 43A4FE2355',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                        Text('Time : 21 Jan, 2020 at 10:30 AM',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500))),
                      ],
                    ),
                    Text('Rs 1,000.00',
                        style: GoogleFonts.robotoCondensed(
                            textStyle: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 20,
                                fontWeight: FontWeight.w600)))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
