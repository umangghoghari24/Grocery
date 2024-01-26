import 'package:flutter/material.dart';
class orderpage extends StatelessWidget {
  const orderpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.all(20),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,
              size: 28,),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 15,top: 10),
                alignment: Alignment.centerLeft,
                child: Text('Fill Order Detail`s',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'First Name',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                        color: Colors.black
                    )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Last Name',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'E-mail',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Address',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'City',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      )
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15,top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 6),
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(10)
                ),
                width: 370,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Pin code',
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                      )
                  ),
                ),
              ),
              SizedBox(height: 30,),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    // color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, 'sucees');
                  },
                      child: Text('Order Now')),
                  // Text('Order Now',style: TextStyle(
                  //   color: Colors.white,
                  //   fontWeight: FontWeight.bold,
                  //   fontSize: 18,
                  // ),),
                  

                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
