import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopify/Home/screens/Details/details_body.dart';
import 'package:shopify/components/constants.dart';
import 'package:shopify/components/models.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({key, this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0.0,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                color: Colors.white,
              ),
              color: kTextColor,
              onPressed: () {}),
          SizedBox(
            width: kDefaultPaddin / 4,
          )
        ],
      ),
      body: DetailsBody(
        product: product,
      ),
    );
  }
}
