
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/model/product.dart';
import 'package:electronic_store/widget/details/color_dots.dart';
import 'package:electronic_store/widget/details/product_image.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({Key? key,
    required this.product
  }) : super(key: key);

final Product product;
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    //to Provide us the height and width of screen
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding*1.5),
          width: size.width,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                    size: size,
                    image: product.image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDot(
                      fillColor:kTextLightColor ,
                      isSelected: true,
                    ),
                    ColorDot(
                      fillColor:Colors.blue ,
                      isSelected: false,
                    ),
                    ColorDot(
                      fillColor:Colors.red ,
                      isSelected: false,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                child: Text(
                    product.title,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Text(
                  'السعر: \$${product.price}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: kSecondaryColor,
                ),
              ),
              SizedBox(height: kDefaultPadding,),
            ],
          ) ,
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding/2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding*1.5,
              vertical: kDefaultPadding/2
          ),
          child: Text(
          product.description,
            style: TextStyle(
                color: Colors.white,
                fontSize:19,
            ),
          ),
        ),
      ],
    );
  }
}



