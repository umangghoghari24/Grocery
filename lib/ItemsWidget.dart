import 'package:flutter/material.dart';
class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Top',style: TextStyle(
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
        GridView.count(
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 8; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
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
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'itempage');
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset('assetimage/$i.jpg',
                    height: 110,width: 110,),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 8),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Item title',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87
                  ),),
                ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 8),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Fresh Fruits 2KG',style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),),
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('\$20',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.green
                    )
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.add_shopping_cart,
                          size: 15,
                        color: Colors.white,),
                      ),
                    )
                  ],
                ),),
              ],
            ),
          )
        ],
        )
      ],
    );
  }
}
