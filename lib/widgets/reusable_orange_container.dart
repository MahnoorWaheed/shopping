import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReusableContainer extends StatelessWidget {
  const ReusableContainer({
    Key? key,
  this.height=23,
  this.width=45,
  this.radius=5,
  this.icons,
 this.title,
  }) : super(key: key);
 final double? height;
 final double? width;
 final double? radius;
 final String? title;
 final Icon? icons;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:8.0,top: 8.0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius!),
          gradient:const LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xffFFA984),
              Color(0xffFF793F)
            ],
          ),
        ),
        child: Center(
          child: Text(title!, 
          style: GoogleFonts.poppins(color: Colors.white),
          ),
        ),
      ),
    );
  }
}