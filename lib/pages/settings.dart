import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/colors.dart' as color;
import 'package:myapp/pages/_profileMenu.dart';
import 'package:myapp/pages/calendar.dart';

class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18),
          color: Colors.white,
          height: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('PERSONAL INFORMATION',
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(color: Colors.grey[500]))),
              ),
              FlatButton(
                color: color.secondary,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ProfileMenu()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.user,
                        size: 16,
                        color: color.primary,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Profile',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: color.primary,
                          ))),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.idCard,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Documents',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.userPlus,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Invite friends',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.moneyBill,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Payment methods',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.bell,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Notifications',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18),
          color: Colors.white,
          height: 210,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text('SERVICES',
                    style: GoogleFonts.robotoCondensed(
                        textStyle: TextStyle(color: Colors.grey[500]))),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Calendar(),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.calendarAlt,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Calendar',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.questionCircle,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('FAQ',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.exclamationCircle,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('About Us',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.white,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18),
          color: Colors.white,
          height: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.signOutAlt,
                        size: 16,
                        color: Colors.grey[600],
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Logout',
                          style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                          ))),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  'Copyright Rolling Plans Pvt. Ltd',
                  style: TextStyle(
                      color: Colors.grey[400], fontStyle: FontStyle.italic),
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Center(
                child: Text(
                  'Version 1.0',
                  style: TextStyle(
                      color: Colors.grey[400], fontStyle: FontStyle.italic),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
