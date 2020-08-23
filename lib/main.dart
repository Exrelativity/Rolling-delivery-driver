import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fky'),
      ),
      drawer: _buildDrawer(),
      body: Container(),
    );
  }
}

class _buildDrawer extends StatelessWidget {
  const _buildDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: [
          DrawerHeader(child: null),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home'),
            ),
          )
        ],
      ),
    );
  }
}
