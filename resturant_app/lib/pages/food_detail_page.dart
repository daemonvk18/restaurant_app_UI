import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:readmore/readmore.dart';
import 'package:resturant_app/components/colors.dart';
import '../components/food_class.dart';
import '../components/shop.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({super.key, required this.foodmenu});
  final Food foodmenu;

  @override
  State<FoodDetailPage> createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  int itemcount = 0;

//increment quantity
  void addtapped() {
    setState(() {
      itemcount++;
    });
  }

  //decerement quantity
  void minustapped() {
    setState(() {
      if (itemcount > 0) {
        itemcount--;
      }
    });
  }

  //add to cart method
  void addtoCart() {
    //get access to the shop
    //getting the shop and its menu
    final shop = context.read<Shop>();
    //add to cart
    shop.addToCart(widget.foodmenu, itemcount);
    //let the user know if adding was succeesful
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Appcolors.lightbg_landingpage,
              content: Text(
                "item added to cart!",
                style: GoogleFonts.nunito(
                    color: Appcolors.whitecolor,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600),
              ),
              actions: [
                //poping out
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.done,
                      color: Colors.white,
                    ))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.whitecolor,
      appBar: AppBar(
        backgroundColor: Appcolors.whitecolor,
        elevation: 0.0,
        foregroundColor: Appcolors.lightbg_landingpage,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //list of food details at the top
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.foodmenu.imagelink))),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 22.0,
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  widget.foodmenu.rating,
                  style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              widget.foodmenu.title,
              style: GoogleFonts.playfairDisplay(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w800),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Description",
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ReadMoreText(
              "Salmon sushi is a popular and delicious dish that is enjoyed by sushi enthusiasts all around the world. It's made using raw salmon, which is typically served atop vinegared rice and often accompanied by other ingredients like seaweed, wasabi, and soy sauce.Salmon sushi is a delectable culinary creation that celebrates the natural flavors of fresh salmon.",
              trimLines: 3,
              colorClickableText: Appcolors.lightbg_landingpage,
              trimMode: TrimMode.Line,
              trimCollapsedText: "Show more",
              trimExpandedText: "Show less",
              moreStyle: GoogleFonts.nunito(
                  fontSize: 15.0, fontWeight: FontWeight.w500),
            ),
          ),
          Spacer(),
          //price+quantity to add + aad to cart option
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            color: Appcolors.lightbg_landingpage,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$" + widget.foodmenu.price,
                      style: GoogleFonts.nunito(
                          color: Appcolors.whitecolor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: minustapped,
                          child: Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.horizontal_rule_outlined,
                              color: Appcolors.whitecolor,
                            ),
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(109, 140, 91, 94),
                                shape: BoxShape.circle),
                          ),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            itemcount.toString(),
                            style: GoogleFonts.nunito(
                                color: Appcolors.whitecolor,
                                fontSize: 19.0,
                                fontWeight: FontWeight.w600),
                          ),
                          height: 45.0,
                          width: 45.0,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(109, 140, 91, 94),
                              shape: BoxShape.circle),
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        GestureDetector(
                          onTap: addtapped,
                          child: Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add,
                              color: Appcolors.whitecolor,
                            ),
                            height: 45.0,
                            width: 45.0,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(109, 140, 91, 94),
                                shape: BoxShape.circle),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                GestureDetector(
                  onTap: addtoCart,
                  child: Container(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add to Cart",
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
              ],
            ),
          )
        ],
      ),
    );
  }
}
