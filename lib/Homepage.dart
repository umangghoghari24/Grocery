import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery/BottomCartSheet.dart';
import 'package:grocery/CategoriesWidget.dart';
import 'package:grocery/ItemsWidget.dart';
import 'package:grocery/PopularItemWidget.dart';
import 'package:sliding_sheet/sliding_sheet.dart';



// import 'package:badges/badges.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  // custom app bar
                  Container(
                    padding: EdgeInsets.only(right: 20,left: 15,top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.menu,
                        color: Colors.white,
                        size: 30,),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                blurRadius: 2
                              )
                            ]),
                          child: Badge(
                            backgroundColor: Colors.red,
                           padding: EdgeInsets.all(0),
                           label : Text('3',style: TextStyle(
                              color: Colors.white,
                              fontSize: 15
                            ),),
                            child: InkWell(
                              onTap: () {
                                showSlidingBottomSheet(
                                  context,
                                  builder: (context) {
                                  return SlidingSheetDialog(
                                      elevation: 8,
                                      cornerRadius: 16,
                                    builder: (context, state) {
                                        return BottomCartsheet();
                                    }
                                  );
                                },);
                              },
                              child: Icon(Icons.shopping_cart,
                                color: Colors.white,
                                  size: 28,),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  // Wel come Text

                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 90),
                          child: Text("Welcome",style: TextStyle(
                            fontSize: 35,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        Text('What do you want to buy?',style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),)
                      ],
                    ),
                  ),

                  // Serach widget

                  Container(
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Row(
                      children: [
                        Icon((Icons.search)),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search here....',
                              border: InputBorder.none
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.filter_list)
                      ],
                    ),
                  ),
                  // Product widget
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CategoriesWidget(),
                         PopularItemWidget(),
                        ItemsWidget(),
                      ],
                    ),
                  )
                ],
              )
          ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        //onTap: (index) {},
        height: 70,
        color: Colors.red,
        items: [
          Icon(Icons.home,size: 30,color: Colors.white,),
          Icon(Icons.shopping_cart,size: 30,color: Colors.white,),
          // IconButton(onPressed: () {},
          //     icon: Icon(Icons.shopping_cart,size: 30,color: Colors.white),),
          Icon(Icons.menu,size: 30,color: Colors.white,)

        ],
      ),
    );
  }
}
