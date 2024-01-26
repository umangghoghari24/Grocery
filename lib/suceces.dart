import 'package:flutter/material.dart';
class sucees extends StatelessWidget {
  const sucees({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlerp8c9-EKQFzOdaWtOO0Ic8ZOZeXNMlrcQ&usqp=CAU',
              height: 500,),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: () {
              Navigator.pushNamed(context, 'Homepage');
            },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Succesful Order',style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                ),))
          ],
        ),
      ),
    );
  }
}
