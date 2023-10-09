import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/components/colors.dart';

class LongBarContainers extends StatelessWidget {
  const LongBarContainers(
      {super.key,
      required this.imagepath,
      required this.itemprice,
      required this.itemname});
  final String imagepath;
  final String itemprice;
  final String itemname;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        height: 160.0,
        width: 355.0,
        decoration: BoxDecoration(
            color: Appcolors.whitecolor,
            borderRadius: BorderRadius.circular(25)),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            width: 140,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(image: AssetImage(imagepath))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //itemtitle
              Text(
                itemname,
                style: GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 7.0,
              ),
              //itemprice
              Text(
                itemprice,
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
