import 'package:flutter/material.dart';
class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$120',style: TextStyle(
              color: Colors.green,
              fontSize: 25,
              fontWeight: FontWeight.bold
            ),),

            // Creating Custom Button Using Ink

            InkWell(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.add_shopping_cart,
                    color: Colors.white,
                    size: 28,
                    ),
                    SizedBox(width: 5,),
                    Text('Add To Cart',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
