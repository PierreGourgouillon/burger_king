import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardFood extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final double radius = 15;

    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Material(
        color: Color(0xfff5f5f0),
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: InkWell(
            onTap: (){},
            borderRadius: BorderRadius.all(Radius.circular(radius)),
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Image.asset("assets/images/whooper.webp",width: 150,height: 150,),
                  SizedBox(height: 0),
                  Text(
                    "Double Whooper",
                    style: GoogleFonts.openSans(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  Text("Burger",
                    style: GoogleFonts.openSans(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  Text(r'$3,99',
                    style: GoogleFonts.openSans(
                        color: Color(0xff5c9238),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )
        ),
      ),
    );
  }

}