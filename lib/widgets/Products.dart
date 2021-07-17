import 'package:flutter/material.dart';
import 'package:thriftaja/screens/DetailScreen.dart';
import 'package:thriftaja/theme.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 107,
      decoration: BoxDecoration(
        border: Border.all(
          color: blackColor,
          width: 2
        ),
        borderRadius: BorderRadius.circular(15)
      ),
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen()));
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 18, bottom: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/item-pic-1.png',
                    width: 101,
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PUMA',
                        style: blackTextStyle.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                      Text(
                        'BLACK AND WHITE',
                        style: blackTextStyle.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.w300
                        ),
                      ),
                      Text(
                        'Condition : 7/10',
                        style: greyTextStyle.copyWith(
                          fontSize: 9,
                          fontWeight: FontWeight.w300
                        ),
                      )
                    ],
                  ),
                  
                ],
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 60,
                height: 28,
                decoration: BoxDecoration(
                  color: blueColor,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15), topRight: Radius.circular(12)),
                  border: Border.all(width: 1, color: blackColor)
                ),
                child: Center(
                  child: Text(
                    '\$9.99',
                    style: yellowTextStyle.copyWith(fontSize: 14),
                  ),
                ),
              ),
            )
          ]
        ),
      ),
    );
  }
}