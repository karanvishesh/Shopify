import 'package:flutter/material.dart';
import 'package:shopify/components/models.dart';

import '../../components/constants.dart';

class BuildItemsCard extends StatelessWidget {
  final Product product;
  final Function onpress;
  const BuildItemsCard({
    Key key,
    this.product,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.all(kDefaultPaddin),
            height: 180,
            width: 160,
            decoration: BoxDecoration(
                color: product.color, borderRadius: BorderRadius.circular(16)),
            child: Hero(child: Image.asset(product.image),tag: product.id,),
          ),
          SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
                text: "${product.title}\n",
                style: TextStyle(color: Colors.black54, fontSize: 18),
                children: [
                  TextSpan(
                    text: "\$${product.price}",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ]),
          ),
        ]),
      ),
    );
  }
}
