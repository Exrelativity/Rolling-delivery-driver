import 'package:flutter/material.dart';
import 'package:myapp/colors.dart' as color;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profilePage extends StatelessWidget {
  const profilePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Lists(),
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 80,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                height: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('images/user.png'))),
              )
            ],
          ),
        )
      ],
    );
  }
}
