import 'package:flutter/material.dart';
import 'package:thriftaja/theme.dart';

class DetailScreen extends StatefulWidget {

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFav = false;
  String activeImage = 'assets/item-pic-1.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Stack(
            children: [
              // NOTE : Active Image
              Image.asset(
                activeImage,
                width: MediaQuery.of(context).size.width,
                height: 287,
              ),
              // NOTE : Detail Product
              ListView(
                children: [
                  SizedBox(height: 450,),
                  Container(
                    height: 430,
                    decoration: BoxDecoration(
                      border: Border.all(width: 3, color: blackColor),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                      color: Color(0xffFF)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Puma',
                            style: blackTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'BLACK AND WHITE',
                            style: blackTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Condition : 8/10',
                            style: greyTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. In nulla posuere sollicitudin aliquam ultrices sagittis orci.',
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffFFFFFF)
                            ),
                            height: 83,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: blackColor),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: InkWell(
                                    child: Image.asset('assets/item-pic-1.png',width: 120, height: 80,),
                                    onTap: (){
                                      setState(() {
                                        activeImage = 'assets/item-pic-1.png';
                                      });
                                    },
                                  )
                                ),
                                SizedBox(width: 12,),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: blackColor),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: InkWell(
                                    child: Image.asset('assets/item-pic-2.png',width: 120, height: 80,),
                                    onTap: (){
                                      setState(() {
                                        activeImage = 'assets/item-pic-2.png';
                                      });
                                    },
                                  )
                                ),
                                SizedBox(width: 12,),
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 2, color: blackColor),
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: InkWell(
                                    child: Image.asset('assets/item-pic-3.png',width: 120, height: 80,),
                                    onTap: (){
                                      setState(() {
                                        activeImage = 'assets/item-pic-3.png';
                                      });
                                    },
                                  )
                                ),
                                SizedBox(width: 12,),
                                
                              ],
                            ),
                          ),
                          SizedBox(height: 30,),
                          Container(
                            width: 366,
                            child: ElevatedButton(
                              onPressed: (){},
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
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              // NOTE : Navigation Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Image.asset('assets/btn-back.png', width: 30,),
                      onTap: (){
                        Navigator.pop(context);
                      },
                    ),
                    InkWell(
                      onTap: (){
                        setState(() {
                          isFav = !isFav;
                        });
                      },
                      child: Image.asset(
                        isFav ? 'assets/btn-wishlisted.png' : 'assets/btn-wishlist.png',
                        width: 30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}