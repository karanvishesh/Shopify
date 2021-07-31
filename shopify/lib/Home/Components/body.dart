import 'package:flutter/material.dart';
import 'package:shopify/Home/screens/Details/details.dart';
import 'package:shopify/components/constants.dart';
import 'package:shopify/components/models.dart';

import 'categories_slider.dart';
import 'item_cards.dart';

class Body extends StatelessWidget {
  const Body({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ),
        SizedBox(height: kDefaultPaddin / 2),
        CategoriesSLider(),
        SizedBox(height: kDefaultPaddin),
        Expanded(
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => BuildItemsCard(
                      product: products[index],
                      onpress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetails(product: products[index],)));
                      },
                    ))),
      ],
    );
  }
}
