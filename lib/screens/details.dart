import 'package:flutter/material.dart';
import 'package:shoppingapp/utils/utils.dart';
import 'package:shoppingapp/widgets/shoe_details.dart';
import 'package:shoppingapp/widgets/shoe_price_container.dart';

class Details extends StatelessWidget {
  const Details({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Column(
          children: [
            Row(
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
           ShoePrice(),
           Image.asset("assets/images/shoe.png", 
           height: ScreenHeight(context)*0.33,
           ),
           ShoeDetails(),
          ],
        ),
      ),
    );
  }
}

