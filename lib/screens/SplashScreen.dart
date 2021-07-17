import 'package:flutter/material.dart';
import 'package:thriftaja/screens/HomeScreen.dart';
import 'package:thriftaja/theme.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo_bag.png',
                width: 43,
              ),
              SizedBox(height: 20,),
              Image.asset(
                'assets/logo.png',
                width: 159,
                height: 51,
              ),
              SizedBox(height: 30,),
              Container(
                width: 193,
                height: 42,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text(
                    'START THRIFT',
                    style: headingBlackText.copyWith(fontSize: 20),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFFFF),
                    side: BorderSide(width: 2, color: blackColor),
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                  
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}