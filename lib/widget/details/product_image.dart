
import 'package:electronic_store/constants.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);
  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width*0.8, // height =80% of the screen
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: size.height*0.7,
            width: size.width*0.7,
            decoration: const BoxDecoration(
              color:Colors.white ,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.height*0.75,
            width: size.width*0.75,
            fit: BoxFit.cover,
          ),

        ],
      ),
    );
  }
}