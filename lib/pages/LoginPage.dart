import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return loginPageState();
  }

}

class loginPageState extends State<LoginPage>{
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width/1.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width / 1.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.house, size: 16, color: Colors.amber,),
                  Icon(Icons.arrow_back, size: 16, color: Colors.black,),
                ],
              ),
            ),
            Container(
              height: size.height/3.2,
              width: size.width/1.1,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Text("Sign In", style: TextStyle(color: Colors.black, fontSize: 17, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: size.width/1.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Email", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                    )
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: size.width/1.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("Password", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                    )
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 35,
                    width: size.width/2,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(child: Text("SignIn", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),),
                    )
                  ),
                ],
              ),
            )
          ],
        ),
      ),

    );
  }

}