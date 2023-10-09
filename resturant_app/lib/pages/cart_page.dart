import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:resturant_app/components/cart_cards.dart';
import 'package:resturant_app/components/colors.dart';
import '../components/food_class.dart';
import '../components/shop.dart';

class CartPage extends StatefulWidget {
  const CartPage({
    super.key,
  });

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (BuildContext context, value, Widget? child) => Scaffold(
        backgroundColor: Appcolors.lightbg_landingpage,
        appBar: AppBar(
          title: Text(
            "MY  Cart",
            style: GoogleFonts.playfairDisplay(
                color: Appcolors.whitecolor,
                fontSize: 20.0,
                fontWeight: FontWeight.w800),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20.0,
            ),
          ),
          backgroundColor: Appcolors.lightbg_landingpage,
          elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: value.cart.length,
                  itemBuilder: ((context, index) {
                    //get the food from the cart
                    final Food food = value.cart[index];
                    //get the food name
                    final String name = food.title;
                    //get the food price
                    final String price = food.price;
                    //and return it in a list tile manner
                    return CartCards(
                      title: name,
                      subtitle: price,
                      onPressed: () => removeFromCart(food, context),
                    );
                  }),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Pay Now",
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
            ],
          ),
        ),
      ),
    );
  }
}
