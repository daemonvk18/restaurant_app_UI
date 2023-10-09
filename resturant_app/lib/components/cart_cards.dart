import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/components/colors.dart';

class CartCards extends StatelessWidget {
  const CartCards(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.onPressed});
  final String title;
  final String subtitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Container(
        height: 80.0,
        width: 350.0,
        decoration: BoxDecoration(
          color: Color.fromARGB(109, 140, 91, 94),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.nunito(
                        color: Appcolors.whitecolor,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.nunito(
                        color: Appcolors.whitecolor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.delete,
                color: Appcolors.lightwhite,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
