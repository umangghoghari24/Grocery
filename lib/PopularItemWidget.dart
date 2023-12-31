import 'package:flutter/material.dart';
class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Popular',style: TextStyle(
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
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 1; i< 8; i++)
              Container(
                 margin: EdgeInsets.all(10),
                 padding: EdgeInsets.all(10),
                width: 100,height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 8
                    )
                  ]
                ),
                child: Image.asset('assetimage/$i.jpg'),
              )
            ],
          ),
        )
      ],
    );
  }
}
