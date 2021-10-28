import 'package:flutter/material.dart';
import 'package:burger_king/components/appbar/AppBarHome.dart';
import 'package:burger_king/components/cardFood.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget headerSection = Container(
      padding: EdgeInsets.only(left: 20, bottom: 10),
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xffd9bd97)),
      child:   Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NEW!",
                style: GoogleFonts.openSans(
                    color: Colors.red,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(height: 8),
              Text(
                "King Whopper",
                style: GoogleFonts.roboto(
                    color: Color(0xffa96346),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "Burger",
                style: GoogleFonts.roboto(
                    color: Color(0xffa96346),
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 20),
              Image.asset('assets/icons/logo_burger_king.png',height: 35),
              SizedBox(height: 10),

            ],
          ),
          Positioned(
              right: 0,
              bottom: 0,
              child: Image.asset('assets/images/test.webp', width:  MediaQuery.of(context).size.width * 70 /100)
          )
        ],
      )


    );

    Widget mostPopularSection = Container(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Most Popular",
                style: GoogleFonts.openSans(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),),
                TextButton(
                  onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      shape: RoundedRectangleBorder(side: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),borderRadius: BorderRadius.circular(100)),
                      padding: EdgeInsets.fromLTRB(10, 4, 10, 4)
                    ),
                    child: Text(
                      "View All",
                      style: GoogleFonts.openSans(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  )
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              children: [
                CardFood(),
                CardFood(),
                CardFood(),
              ],
            ),
          )
        ],
      ),
    );

    Widget menuPackages = Container(
      child: Column(
        children: [
          GridView.count(
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            children: List.generate(20, (index) {
              return Container(
                height: 20,
                width: 20,
                margin: EdgeInsets.all(0),
                decoration: BoxDecoration(color: Colors.blue),
              );
            }),
          )
        ],
      ),
    );

    return Scaffold(
      appBar: HomeAppBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            headerSection,
            mostPopularSection,
            menuPackages
          ],
        ),
      ),
    );
  }

}