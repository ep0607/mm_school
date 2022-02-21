import 'package:flutter/material.dart';
import 'package:mm_school/models/standards.dart';
//import 'package:grocery_app/screens/product_details/product_details_screen.dart';
import 'package:mm_school/styles/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mm_school/standard_item_card_widget.dart';
import 'package:mm_school/search_bar_widget.dart';
import 'school_type_screen.dart';
import 'home_banner_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SvgPicture.asset( "assets/images/banner_image.jpeg" ),
                  SizedBox(
                    height: 5,
                  ),
                  padded( locationWidget( ) ),
                  SizedBox(
                    height: 15,
                  ),
                  padded( SearchBarWidget( ) ),
                  SizedBox(
                    height: 25,
                  ),
                  padded( HomeBanner( ) ),
                  SizedBox(
                    height: 25,
                  ),
                  padded( subTitle( "Divisions" ) ),
                  getHorizontalItemSlider( divisions ),
                  SizedBox(
                    height: 15,
                  ),
                  padded( subTitle( "States" ) ),
                  getHorizontalItemSlider( states ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 105,
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget padded(Widget widget) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: widget,
    );
  }

  Widget getHorizontalItemSlider(List<StateItem> items) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 250,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              onItemClicked(context, items[index]);
            },
            child: StandardItemCardWidget(
              item: items[index],
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox( width: 20);
        },
      ),
    );
  }

  void onItemClicked(BuildContext context, StateItem stateItem) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => SchoolTypeScreen(stateItem)),
    );
  }


  Widget subTitle(String text) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }


  Widget locationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        SizedBox(
          width: 8,
        ),
        Text(
          "Free Online Education Institution Myanmar",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
