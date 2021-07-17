import 'package:flutter/material.dart';
import 'package:thriftaja/theme.dart';
import 'package:thriftaja/widgets/Products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 72,
                      height: 23,
                    ),
                    Image.asset(
                      'assets/btn_search.png',
                      width: 30,
                    )
                  ],
                ),
                SizedBox(height: 33,),
                Text(
                  'Find the best\nshoes that fit in you.',
                  style: headingBlackText.copyWith(fontSize: 24),
                ),
                SizedBox(height: 10,),
                Text(
                  'High quality used shoes with the best price.',
                  style: headingGreyText.copyWith(fontSize: 14),
                ),
                SizedBox(height: 36,),
                Container(
                  child: Column(
                    children: [
                      Products(),
                      SizedBox(height: 25,),
                      Products(),
                      SizedBox(height: 25,),
                      Products(),
                      SizedBox(height: 25,),
                      Products(),
                      SizedBox(height: 25,),
                    ],
                  ),
                ),
                SizedBox(height: 50,)
              ],
            ),
            ]
          ),
        ),
      ),
    );
  }
}