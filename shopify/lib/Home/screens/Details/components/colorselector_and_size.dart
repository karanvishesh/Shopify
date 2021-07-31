import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopify/components/constants.dart';
import 'package:shopify/components/models.dart';

class ColorSelector extends StatelessWidget {
  const ColorSelector({
    Key key,
    @required this.product,
    this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Product product;
  final bool isSelected;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 8),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border:
                Border.all(color: (isSelected) ? color : Colors.transparent)),
        height: 24,
        width: 24,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
          ),
        ),
      ),
    );
  }
}

class ColorSelectorAndSizeWidget extends StatelessWidget {
  const ColorSelectorAndSizeWidget({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Color",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Row(children: [
              ColorSelector(
                product: product,
                color: product.color,
                isSelected: true,
              ),
              ColorSelector(
                product: product,
                color: Colors.red,
              ),
              ColorSelector(
                product: product,
                color: Colors.yellow,
              )
            ]),
          ],
        ),
        Expanded(
          child: Column(children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 20,
                    color: kTextLightColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${product.size} cm",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ]),
        )
      ],
    );
  }
}
