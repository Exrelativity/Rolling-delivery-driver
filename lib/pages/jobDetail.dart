import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/colors.dart' as color;

class JobPage extends StatefulWidget {
  JobPage({Key key}) : super(key: key);

  @override
  _JobPageState createState() => _JobPageState();
}

class _JobPageState extends State<JobPage> with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
// TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 200,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  title: Text('Jobs'),
                  background: Image.asset('images/job.jpg'),
                ),
                actions: [
                  IconButton(
                    icon: FaIcon(FontAwesomeIcons.shareAlt),
                    onPressed: () {},
                  )
                ],
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: color.bg,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            image: DecorationImage(
                                image: ExactAssetImage('images/user.png'))),
                      ),
                      Text(
                        'Sr. Laravel Developer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          'Rolling Plans Pvt. Ltd, Nepal',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontStyle: FontStyle.italic),
                        ),
                      ),
                      Text(
                        'Nrs.40k-50K/4Yrs',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),

                      // Tabs

                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            color: color.secondary,
                            height: 50,
                            child: TabBar(
                              tabs: [
                                Tab(
                                  text: "Description",
                                ),
                                Tab(text: "Company"),
                                Tab(text: "Reviews"),
                              ],
                              unselectedLabelColor: Colors.grey,
                              labelColor: color.primary,
                              controller: _tabController,
                            ),
                          ),
                          Container(
                            height: 600,
                            child: TabBarView(
                                controller: _tabController,
                                children: <Widget>[
                                  Container(
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0, horizontal: 20),
                                            child: RichText(
                                              text: TextSpan(
                                                  text:
                                                      '\t\t\t\t\t\t\t\t\t\tLorem Ipsum is led it to make a type specimen book the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including   took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                                                  style: TextStyle(color: Colors.black54),
                                                  children: <TextSpan>[
                                                    TextSpan(
                                                        text: "Read more",
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500))
                                                  ]),
                                            ))
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Center(
                                        child: Text("Location of company")),
                                  ),
                                  Container(
                                    child: ListView.builder(
                                        itemCount: 9,
                                        physics: BouncingScrollPhysics(),
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return Card(
                                            elevation: 1,
                                            margin: EdgeInsets.only(top: 1),
                                            color: color.bg,
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 18, vertical: 10),
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: double.infinity,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    height: 40,
                                                                    width: 40,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.all(
                                                                              Radius.circular(100)),
                                                                      image: DecorationImage(
                                                                          image:
                                                                              ExactAssetImage('images/user.png')),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 4,
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Prajwal Rai',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                14,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            4,
                                                                      ),
                                                                      Text(
                                                                        'May 16, 2019 04:52 PM',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                10,
                                                                            color:
                                                                                Colors.grey[500]),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                              Row(
                                                                children: [
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .starHalfAlt,
                                                                    color: Colors
                                                                        .orange,
                                                                    size: 14,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 2,
                                                                  ),
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .starHalfAlt,
                                                                    color: Colors
                                                                        .orange,
                                                                    size: 14,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 2,
                                                                  ),
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .starHalfAlt,
                                                                    color: Colors
                                                                        .orange,
                                                                    size: 14,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 2,
                                                                  ),
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .starHalfAlt,
                                                                    color: Colors
                                                                        .orange,
                                                                    size: 14,
                                                                  ),
                                                                  SizedBox(
                                                                    width: 2,
                                                                  ),
                                                                  FaIcon(
                                                                    FontAwesomeIcons
                                                                        .star,
                                                                    color: Colors
                                                                        .orange,
                                                                    size: 14,
                                                                  ),
                                                                ],
                                                              )
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        8.0),
                                                            child: Text(
                                                              'While the government response to the virus has not been up to the mark, it has also failed to ensure risk communication and make',
                                                              style: TextStyle(
                                                                fontSize: 12,
                                                                color:
                                                                    Colors.grey,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        }),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [_buildBotton()],
          )
        ],
      ),
    );
  }
}

Widget _buildBotton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 4),
    margin: EdgeInsets.symmetric(horizontal: 18),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // FlatButton(
        //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        //   color: Colors.grey[200],
        //   onPressed: () {},
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 18),
        //     child: FaIcon(FontAwesomeIcons.comments),
        //   ),
        // ),
        Expanded(
          child: FlatButton(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onPressed: () {},
            textColor: color.primary,
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.comments,
                  size: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Write a Review',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: FlatButton(
            padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            onPressed: () {},
            textColor: Colors.white,
            color: color.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(
                  FontAwesomeIcons.paperPlane,
                  size: 16,
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  'Apply Now',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
