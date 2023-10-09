import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/components/colors.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      width: 350.0,
      decoration: BoxDecoration(
          color: Appcolors.lightbg_landingpage,
          borderRadius: BorderRadius.all(Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
            child: Column(
              children: [
                Text(
                  "Get 32% Promo",
                  style: GoogleFonts.playfairDisplay(
                      color: Appcolors.whitecolor,
                      fontSize: 23.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Buy Food",
                      style: GoogleFonts.nunito(
                          color: Appcolors.lightwhite,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600),
                    ),
                    height: 42.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(28)),
                        color: Color.fromARGB(109, 140, 91, 94)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 130.0,
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/sushi01.png"), fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
