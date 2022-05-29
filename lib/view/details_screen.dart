
// ignore_for_file: prefer_const_constructors

import 'package:electronic_store/constants.dart';
import 'package:electronic_store/model/product.dart';
import 'package:electronic_store/widget/details/details_body.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key,
    required this.product
  }) : super(key: key);

 final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product ),


    );
  }
}

AppBar detailsAppBar(BuildContext context){
  return AppBar(
    elevation: 0,
    backgroundColor: kBackgroundColor,
    leading: IconButton(
      padding: EdgeInsets.only(right: kDefaultPadding),
      icon: Icon(
        Icons.arrow_back,
        color: kPrimaryColor,
      ),
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    centerTitle: false,
    title: Text(
      'رجوع',
      style: Theme.of(context).textTheme.bodyText2,
    ),
  );
}