import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopify/components/constants.dart';
import 'package:shopify/components/models.dart';

import 'components/colorselector_and_size.dart';
import 'components/title_and_image.dart';

class DetailsBody extends StatefulWidget {
  DetailsBody({key, this.product}) : super(key: key);
  final Product product;

  @override
  _DetailsBodyState createState() => _DetailsBodyState();
}

class _DetailsBodyState extends State<DetailsBody> {
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.28),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                  ),
                  child: Column(
                    children: [
                      ColorSelectorAndSizeWidget(product: widget.product),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 35),
                        child: Row(
                          children: [
                            buildCounterIcon(Icons.remove, () {
                              if (counter > 1) counter--;
                            }),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              counter.toString().padLeft(2, "0"),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline4
                                  .copyWith(),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            buildCounterIcon(Icons.add, () {
                              counter++;
                            }),
                          ],
                        ),
                      ),
                      Text(
                        widget.product.description,
                        style: Theme.of(context).textTheme.headline6.copyWith(
                              color: Colors.black45,
                              height: 1.5,
                            ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: kTextLightColor),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/cart.svg",
                              color: widget.product.color,
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: kTextLightColor),
                                color: widget.product.color,
                              ),
                              child: Text(
                                "BUY NOW",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                TitleAndImageBuild(product: widget.product),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container buildCounterIcon(IconData icon, Function onpress) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: kTextLightColor),
      ),
      child: IconButton(
          splashColor: widget.product.color,
          icon: Icon(icon),
          onPressed: () {
            setState(() {
              onpress();
            });
          }),
    );
  }
}
