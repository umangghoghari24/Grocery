import 'package:flutter/material.dart';
import 'package:grocery/BottomBar.dart';
class Itempage extends StatefulWidget {
  const Itempage({Key? key}) : super(key: key);

  @override
  State<Itempage> createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
  var count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
               // for (int i=1; 1<8; i++)
                Container(
                  margin: EdgeInsets.all(15),
                  height: 350,
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assetimage/1.jpg'))
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back,
                    size: 30,
                    color: Colors.green,
                    ),
                  ),
                ),
                Container(
                  // you can change height according to your choice

                  height: MediaQuery.of(context).size.height * 0.4,
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                    )
                  ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 10,bottom: 15),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Fruit title',style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold
                        ),),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                 borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  count-=1;
                                });
                              },
                                  icon: Icon(Icons.remove_outlined)),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('$count',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white
                              ),),
                            ),
                            Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: IconButton(onPressed: () {
                                setState(() {
                                  count+=1;
                                });
                              },
                                  icon: Icon(Icons.add)),
                            ),
                            // boxShadow: [
                            //   BoxShadow(
                            //       color: Colors.grey.withOpacity(0.5),
                            //       blurRadius: 8,
                            //       spreadRadius: 2,
                            //       offset: Offset(0, 3)
                            //   )
                            // ]

                          ],
                        )
                      ],
                    ),
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.star,color: Colors.yellow,
                        size: 30,),
                        Text('4.8 (230)',style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text('Description',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                    ),
                    SizedBox(height: 10,),
                    Text('This is the description of the product, here you can write more about the product, This is the description of the product, hereyou can write more about the product. ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.white
                    ),
                    textAlign: TextAlign.justify,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('Delivery Time:',style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        Spacer(),
                        Icon(Icons.watch_later_outlined,
                        color: Colors.white,),
                        SizedBox(width: 5,),
                        Text('20 Minutes',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),)
                      ],
                    )
                  ],
                ),
                ),
              ],
            ),
          ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
