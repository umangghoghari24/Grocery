import 'package:flutter/material.dart';
import 'package:grocery/Homepage.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp5geq9wskzybNixQYwU7XwTOUnqLzoTzSTbsRSIShe5L_8iDoyTijGhWLOPFkhNikBUw&usqp=CAU',
                  height: 300,),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Text('Buy Fresh Groceries',style: TextStyle(
                  color: Colors.green,
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SizedBox(height: 50,),
              InkWell(
                onTap: () {
                  // pushreplacednamed  so it can not goes back to splashscreen
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                },
                child: Ink(
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.green
                  ),
                  child: Text('Get Started',style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              )
            ],
          )
      ),
    );
  }
}
