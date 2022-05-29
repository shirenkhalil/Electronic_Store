
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/model/product.dart';
import 'package:flutter/material.dart';


class ProductCard extends StatelessWidget {
  const ProductCard({Key? key,
    required this.itemIndex,
    required this.product,
    required this.press
              }) : super(key: key);

  final int itemIndex;
  final Product product;
  final void Function()? press;


  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal:kDefaultPadding,vertical: kDefaultPadding/2  ),
      height: 190,
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0,15),
                        blurRadius: 25,
                        color: Colors.black12
                    ),
                  ]
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding,),
                  height: 160,
                    width: 200,
                  child: Image.asset(
                    product.image,
                      fit:BoxFit.cover,
                  ),
                ),
            ),
            Positioned(
              bottom:10,
                right: 0,
                child: SizedBox(
                  height: 126,
                  width: size.width-200, // because our image is 200width ,then width-200
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          product.title,
                          style: Theme.of(context).textTheme.bodyText1,),
                      ),
                     Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        child: Text(
                          product.subTitle,
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(kDefaultPadding) ,
                        child: Container(
                          padding:EdgeInsets.symmetric(
                            horizontal: kDefaultPadding*1.5 , // 30px padding
                            vertical: kDefaultPadding /5 , // 5 px padding
                             ),
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(22),
                          ),
                          child: Text(
                           'السعر: \$${product.price} ',
                          ),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),

    );
  }
}
