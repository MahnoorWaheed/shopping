import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/utils/utils.dart';
import 'package:shoppingapp/widgets/reusable_orange_container.dart';

class ShoePrice extends StatelessWidget {
  const ShoePrice({
    Key? key,
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Container(
        height: ScreenHeight(context)*0.15,
        width: ScreenWidth(context),
        decoration: BoxDecoration(
         color: Colors.white,
         borderRadius: BorderRadius.circular(10),
         boxShadow:const [
           BoxShadow(
             color: Colors.black,
             blurRadius: 2,
             spreadRadius: 0.1,
             offset: Offset.infinite,
           ),
         ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
               const ReusableContainer(
                 title: "-30%",
               ),
              Expanded(
                child: Image.asset("assets/images/orangeshoe.png",
                ),
              ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$180.40", 
                style: GoogleFonts.poppins(fontWeight: FontWeight.w900, 
                fontSize: 20
                ),
                ),
                Text("Nike Orange", 
                style: GoogleFonts.poppins(color: Colors.grey, 
                fontSize: 15,
                ),
                ),
              ],
            ), 
            const ReusableContainer(
              height: 45,
              width: 70,
              title: "Buy",
            )
          ],
        ),
      ),
    );
  }
}

