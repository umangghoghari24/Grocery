import 'package:flutter/material.dart';
class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Category',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.green
            ),),
            Text('See All',style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),)
          ],
        ),
        ),
        SingleChildScrollView(

          // so row can be scrollable  in horizontal

          scrollDirection: Axis.horizontal,
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
               for (int i = 1; i < 8; i++)
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6
                    )
                  ]
                ),
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                    child: Image.asset("assetimage/aalu.jpg",
                    height: 50,width: 50,)
                    ),
                    Padding(padding: EdgeInsets.only(right: 5),
                    child: Text('Category',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),),
                    )
                  ],
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
