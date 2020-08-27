import 'package:flutter/material.dart';
import 'package:myapp/colors.dart' as color;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/pages/jobDetail.dart';

class latestNews extends StatelessWidget {
  const latestNews({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: color.primary,
          title: Text('News'),
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
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: color.bg,
            labelColor: color.bg,
            tabs: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Latest News',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Popular News',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Sports',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Education',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Covid 19',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
        body: Lists(),
      ),
    );
  }
}

class Lists extends StatelessWidget {
  const Lists({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        Container(
          child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 9,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => JobPage(),
                    ));
                  },
                  child: Card(
                    elevation: 1,
                    margin: EdgeInsets.only(top: 1),
                    color: color.bg,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(4),
                      onTap: () => {},
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 18, vertical: 10),
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
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8.0),
                                      child: Text(
                                        'While the government response to the virus has not been up to the mark, it has also failed to ensure risk communication and make...',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 2.0),
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
                                          padding:
                                              const EdgeInsets.only(left: 10.0),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 2.0),
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
                            Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: ExactAssetImage(
                                        'images/kantipur-2.jpg')),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
        Container(
          child: Text("Hello"),
        ),
        Container(
          child: Text("Hello"),
        ),
        Container(
          child: Text("Hello"),
        ),
        Container(
          child: Text("Hello"),
        ),
      ],
    );
  }
}

// Widget _buildJobList(int index) {
//   return
// }
