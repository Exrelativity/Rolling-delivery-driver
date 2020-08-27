import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/colors.dart' as color;

class categoryList extends StatelessWidget {
  const categoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: color.primary,
        title: Text('Category'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.sortAmountDownAlt,
              size: 20,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ClipPath(
            child: Container(
              height: 200,
              color: color.primary,
            ),
          ),
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 18.0, vertical: 16),
                  child: Text(
                    'Choose the category',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.all(10),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1.2,
                    mainAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    _buildCategoryItem,
                    childCount: 10,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget _buildCategoryItem(BuildContext context, int index) {
  return MaterialButton(
    onPressed: () {},
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: color.secondary,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          FontAwesomeIcons.handHoldingHeart,
          color: Colors.redAccent,
          size: 45,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
          'HEALTH & SERVICE',
          style: TextStyle(fontSize: 12, color: color.primary),
        )
      ],
    ),
  );
}
