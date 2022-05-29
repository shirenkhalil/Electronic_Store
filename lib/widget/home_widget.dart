
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/model/product.dart';
import 'package:electronic_store/view/details_screen.dart';
import 'package:electronic_store/widget/product_card.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          SizedBox(height: kDefaultPadding/2,),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin:EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight: Radius.circular(40)),
                  ),
                ),
                ListView.builder(
                  itemBuilder: (context,index)=> ProductCard(
                                      product: products[index],
                                      itemIndex: index ,
                                      press: (){
                                        Navigator.push(context,MaterialPageRoute(
                                            builder: (context)=> DetailsScreen(product: products[index]),
                                        ));

                                      },
                  ) ,
                  itemCount: products.length,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
