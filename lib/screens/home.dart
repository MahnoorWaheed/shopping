

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/utils/utils.dart';
import 'package:shoppingapp/widgets/home_text_rows.dart';
import 'package:shoppingapp/widgets/reusable_orange_container.dart';
import 'package:shoppingapp/widgets/search_bar.dart';
import 'package:shoppingapp/widgets/trending_shoes.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
   
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final List<String> items=["Shoes", "Clothes", "Pants", "Denim", "Jackets"];
  final List<String> imgs=["assets/images/shoe.png",
  "assets/images/orangeshoe.png",
  "assets/images/nike green.png","assets/images/nike air shoes (1).png"];

  final List<String> prices=["\$125.00","\$180.00","\$190.00","\$140.00"];

  final List<String> name=["Nike Black Shoes", "Nike Orange Shoes",
   "Nike Green Shoes", "Nike Air Shoes"];

  int? isTapped;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
  //     bottomNavigationBar: CurvedNavigationBar(
        
  //       buttonBackgroundColor: Color(0xffFF793F),
  //  backgroundColor: Color(0xffE5E5E5),
  //   items: <Widget>[
  //     Icon(Icons.home, size: 20, 
  //     ),
  //     Icon(Icons.favorite, size: 20),
  //     Icon(Icons.shopping_cart, size: 20),
  //     Icon(Icons.message, size: 20),
  //     Icon(Icons.person, size: 20),
  //   ],
  //   onTap: (index) {
      
  //   },
  // ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.arrow_back, 
                  color:Colors.grey,
                  ),
                  Icon(Icons.shopping_cart,
                  color:Colors.grey,
                  ),
                ],
              ),
            ),
            SearchBar(),
             HomeTextRow(
category: "Categories",
text: "See All",
             ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal:8.0),
                child: Container(
                  height: ScreenHeight(context)*0.08,
                  width: ScreenWidth(context),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped = index;
                            log('I am clicked: hello $index');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          width: 90,
                          decoration: BoxDecoration(
                            // border: Border.all(color: Colors.grey),
                            gradient: isTapped == index
                                ? const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffFFA984),
                                      Color(0xffFF793F)
                                    ],
                                  )
                                : const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffffffff),
                                      Color(0xffffffff)
                                    ],
                                  ),
                            // color: isTappedIndex == index
                            //     ? Colors.black
                            //     : Colors.amberAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              items[index],
                              style: GoogleFonts.poppins(
                                  color: isTapped == index
                                      ? Colors.white
                                      : Colors.black54,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                      );
                    }),
                ),
              ),
               HomeTextRow(
category: "Trendings",
text: "See All",
             ),

             TrendingShoes(
               name: name, 
               imgs: imgs, 
               prices: prices),
               
          ],
        ),
      ),
    );
  }
}

