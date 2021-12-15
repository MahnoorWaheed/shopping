import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/utils/utils.dart';
import 'package:shoppingapp/widgets/reusable_orange_container.dart';

class ShoeDetails extends StatefulWidget {
   ShoeDetails({
    Key? key,
  }) : super(key: key);

  @override
  State<ShoeDetails> createState() => _ShoeDetailsState();
}

class _ShoeDetailsState extends State<ShoeDetails> {
final List<String> sizes=["US 8", "US 9", "US 10", "US 11", "US 12"];

int? isTapped;


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: ScreenWidth(context),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:13.0, vertical: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("\$125.00", 
                      style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                      Text("Nike Air Shoes"),
                    ],
                  ),
                 Container(
                   height: 60,
                   width: 60,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
              end: Alignment.centerRight,
                      colors:  [
                         Color(0xffFFA984),
                Color(0xffFF793F)
                      ]
                    )
                   ),
                   child: const Icon(Icons.favorite_border_outlined, 
                   color: Colors.white,
                   ),
                 ),
                 
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:18.0),
              child: Text("Choose Size", 
              style: GoogleFonts.poppins(fontSize: 25, 
              fontWeight: FontWeight.w500
              ),
              ),
            ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0),
                child: Container(
                  height: ScreenHeight(context)*0.08,
                  width: ScreenWidth(context),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: sizes.length,
                    itemBuilder: (ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            isTapped = index;
                            log('I am clicked: hello $index');
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
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
                              sizes[index],
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
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                           Text("Price",
                          style: GoogleFonts.poppins(
                            fontSize: 18
                          ),
                        ),
                        Text("\$125.00", 
                        style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(child: 
                  Container(
                    height: ScreenHeight(context)*0.09,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                       begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffFFA984),
              Color(0xffFF793F)
            ],
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30)
                      ),
                    ),
                    child: Center(
                      child: Text("Buy Now", 
                      style: GoogleFonts.poppins(
                        color:Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900
                      ),
                      ),
                    ),
                  ),),
                ],
              )
          ],
        ),
      ),
    );
  }
}

