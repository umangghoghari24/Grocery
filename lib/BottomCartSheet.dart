import 'package:flutter/material.dart';
class BottomCartsheet extends StatefulWidget {
  const BottomCartsheet({Key? key}) : super(key: key);

  @override
  State<BottomCartsheet> createState() => _BottomCartsheetState();
}

class _BottomCartsheetState extends State<BottomCartsheet> {
  bool checkedvalue = false;
  var count = 0;
  @override
  Widget build(BuildContext context) {

    return Material(
      child: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 300),
          //   child: Row(
          //     children: [
          //       IconButton(onPressed: () {},
          //           icon: Icon(Icons.arrow_back,size: 25,),
          //       color: Colors.green,
          //       ),
          //       Text('Back',style: TextStyle(
          //         color: Colors.green,
          //         fontWeight: FontWeight.bold,
          //         fontSize: 18
          //       ),),
          //     ],
          //   ),
          // ),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 500,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        for (int i=1; i<4; i++)
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 8,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Padding(padding: EdgeInsets.all(10),
                              child: Image.asset('assetimage/$i.jpg',
                                width: 80,height: 80,),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 15),
                                    // alignment: Alignment.centerLeft,
                                    child: Text('Item title',style: TextStyle(
                                      color: Colors.green,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                  Container(
                                    child: Text('\$20',style: TextStyle(
                                        color: Colors.green,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  )
                                ],
                              ),
                              Spacer(),
                              Padding(padding: EdgeInsets.symmetric(horizontal: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.disabled_by_default,
                                  color: Colors.green,
                                  size: 28,),
                                  SizedBox(height: 25,),
                                  Row(
                                    children: [
                                      Container (
                                        padding: EdgeInsets.all(0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(20),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(0.5),
                                              spreadRadius: 2,
                                              blurRadius: 8
                                            )
                                          ]
                                        ),
                                          child: IconButton(onPressed: () {
                                            setState(() {
                                              count-=1;
                                            });
                                          },
                                              icon: Icon(Icons.remove))
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(horizontal: 20),
                                        child: Text('$count',style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(0),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey.withOpacity(0.5),
                                                  spreadRadius: 2,
                                                  blurRadius: 8
                                              )
                                            ]
                                        ),
                                          child: IconButton(onPressed: () {
                                            setState(() {
                                              count+=1;
                                            });
                                          },
                                              icon: Icon(Icons.add))
                                      ),

                                    ],
                                  )
                                ],
                              ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          padding: EdgeInsets.all(15),
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
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Delivery Fee:',style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green
                                  ),),
                                  Text('\$20',style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green
                                  ),),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Sub-Totle:',style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green
                                  ),),
                                  Text('\$20',style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green
                                  ),),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 1,
                            blurRadius: 8
                        )
                      ]
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$120',style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                      ),),
                      InkWell(
                        onTap: () {
                           Navigator.pushNamed(context, 'orderpage');
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30)
                          ),
                          child: Text('Check out',style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}
