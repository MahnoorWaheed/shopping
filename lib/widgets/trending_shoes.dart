import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingapp/screens/details.dart';
import 'package:shoppingapp/widgets/reusable_orange_container.dart';

class TrendingShoes extends StatelessWidget {
  const TrendingShoes({
    Key? key,
    required this.name,
    required this.imgs,
    required this.prices,
  }) : super(key: key);

  final List<String> name;
  final List<String> imgs;
  final List<String> prices;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, 
          ), 
          itemCount: name.length,
        itemBuilder: (ctx, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>Details()));
              },
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:8.0, vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          ReusableContainer(
                            title: "-30% ",
                          ), 
                          Icon(Icons.favorite_border_outlined,
                           color: Colors.black,)
                        ],
                      ),
                    ),
                    Image.asset(imgs[index], 
                    height: 70,
                    ),
                    Text(prices[index], 
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w900, fontSize: 18),),
                      Text(name[index],
                      style: GoogleFonts.poppins(
                       fontSize: 18, color:Colors.grey),
                      )
                  ],
                ),
              ),
            ),
          );
        }),
    );
  }
}


