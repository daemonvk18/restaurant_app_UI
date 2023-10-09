import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/components/colors.dart';
import 'package:resturant_app/components/long_bar_containers..dart';
import 'package:resturant_app/components/option_containers.dart';
import 'package:resturant_app/pages/food_detail_page.dart';
import '../components/home_card.dart';
import '../components/shop.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //navigating to the food_details_page
  void NavigatetoDetailPage(int index) {
    //getting the shop and its menu
    final shop = context.read<Shop>();
    final FoodMenu = shop.FoodMenu;
    setState(() {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => FoodDetailPage(foodmenu: FoodMenu[index])));
    });
  }

  @override
  Widget build(BuildContext context) {
    //getting the shop and its menu
    final shop = context.read<Shop>();
    final FoodMenu = shop.FoodMenu;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Appcolors.lightbg_landingpage,
                      ),
                      Text(
                        "jakarta",
                        style: GoogleFonts.nunito(
                            color: Appcolors.lightbg_landingpage,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/cartPage");
                    },
                    child: Container(
                      child: Icon(
                        Icons.shopping_bag,
                        color: Appcolors.whitecolor,
                        size: 20.0,
                      ),
                      height: 35.0,
                      width: 35.0,
                      decoration: BoxDecoration(
                          color: Appcolors.lightbg_landingpage,
                          shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              HomeCard(),
              SizedBox(
                height: 25.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: "Search here....",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(21)),
                      borderSide: BorderSide(
                        color: Appcolors.whitecolor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(21)),
                        borderSide: BorderSide(color: Appcolors.whitecolor)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(21)),
                        borderSide: BorderSide(color: Appcolors.whitecolor))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 260,
                child: ListView.builder(
                    itemCount: FoodMenu.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: ((context, index) {
                      return OptionalContainers(
                        food: FoodMenu[index],
                        onTap: () => NavigatetoDetailPage(index),
                      );
                    })),
              ),
              SizedBox(
                height: 15.0,
              ),
              //lonbars
              LongBarContainers(
                imagepath: "assets/sushi02.png",
                itemprice: "\$230",
                itemname: "Sushi Biryani",
              ),
              LongBarContainers(
                imagepath: "assets/sushi03.png",
                itemprice: "\$310",
                itemname: " Sushi Eggs",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
