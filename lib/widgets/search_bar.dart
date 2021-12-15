import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: TextFormField(
         decoration: InputDecoration(
           prefixIcon: Icon(Icons.search, color: Colors.grey.shade400,),
           suffixIcon: Icon(Icons.filter_list_outlined, color: Colors.grey.shade400,),
           hintText: "Search Shoes",
           hintStyle: GoogleFonts.poppins(color: Colors.grey.shade400, fontSize: 20),
           fillColor: Colors.white,
            filled: true,
           border: OutlineInputBorder(
             borderSide: BorderSide.none,
             borderRadius: BorderRadius.circular(15),
             ),
      ),
      ),
    );
  }
}
