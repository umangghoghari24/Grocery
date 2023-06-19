import 'package:flutter/material.dart';
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
                              fontSize: 20
                            ),),
                            child: InkWell(
                              onTap: () {},
                              child: Icon(Icons.shopping_cart,
                                color: Colors.white,
                                  size: 30,),
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
                  )
                ],
              )
          ),
      ),
    );
  }
}
