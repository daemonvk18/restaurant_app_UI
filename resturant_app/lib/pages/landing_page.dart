import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/components/colors.dart';
import 'package:resturant_app/pages/home_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Appcolors.lightbg_landingpage,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
              child: Text(
                "SHUSHIMAN",
                style: GoogleFonts.playfairDisplay(
                    color: Appcolors.whitecolor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Image.asset("assets/sushi07.png"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
              child: Text(
                "THE  TASTE  OF\nJAPANESE  FOOD",
                style: GoogleFonts.playfairDisplay(
                    color: Appcolors.whitecolor,
                    fontSize: 37.0,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: RichText(
                text: TextSpan(children: [
                  TextSpan(
                      text:
                          "Feel the taste of most popular japanese\nfood anywhere anytime",
                      style: GoogleFonts.nunito(
                          color: Appcolors.lightwhite,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500))
                ]),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Get Started",
                        style: GoogleFonts.nunito(
                            color: Appcolors.lightwhite,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Appcolors.lightwhite,
                      )
                    ],
                  ),
                  height: 60.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(109, 140, 94, 91),
                      borderRadius: BorderRadius.all(Radius.circular(29))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
