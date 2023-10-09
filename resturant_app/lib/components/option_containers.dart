import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resturant_app/components/colors.dart';
import 'food_class.dart';

class OptionalContainers extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  OptionalContainers({required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //image
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                        image: AssetImage(food.imagelink), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 15.0,
              ),
              //title
              Text(
                food.title,
                style: GoogleFonts.playfairDisplay(
                    color: Colors.black,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w800),
              ),
              //rating
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(
                    children: List.generate(
                        5,
                        (index) => Icon(
                              Icons.star,
                              color: Appcolors.lightbg_landingpage,
                              size: 15.0,
                            )),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    food.rating,
                    style:
                        GoogleFonts.nunito(color: Colors.black, fontSize: 15.0),
                  )
                ],
              ),
              SizedBox(
                height: 7.0,
              ),
              //price
              Text(
                '\$' + food.price,
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
          height: 200.0,
          width: 180.0,
          decoration: BoxDecoration(
              color: Appcolors.whitecolor,
              borderRadius: BorderRadius.circular(25)),
        ),
      ),
    );
  }
}
