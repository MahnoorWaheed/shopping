import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTextRow extends StatelessWidget {
  const HomeTextRow({
    Key? key,
    required this.text,
    required this.category
  }) : super(key: key);

final String category;
final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(category, style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold),),
          Text(text, 
          style: GoogleFonts.poppins(color: Colors.orange, fontSize: 17, fontWeight: FontWeight.w900),
          )
        ],
      ),
    );
  }
}