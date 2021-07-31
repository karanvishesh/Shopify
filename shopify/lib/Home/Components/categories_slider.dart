import 'package:flutter/material.dart';

import '../../components/constants.dart';

class CategoriesSLider extends StatefulWidget {
  const CategoriesSLider({key}) : super(key: key);

  @override
  _CategoriesSLiderState createState() => _CategoriesSLiderState();
}

class _CategoriesSLiderState extends State<CategoriesSLider> {
  final List categories = ['Hand bag', 'Jewellery', 'Footwear', "Dress"];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, index) => BuildSlider(index),
      ),
    );
  }

  Widget BuildSlider(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedindex = index;
          });
        },
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: (selectedindex == index)
                          ? kTextColor
                          : kTextLightColor),
                ),
                Container(
                  margin: EdgeInsets.only(top: kDefaultPaddin / 4),
                  height: 2,
                  width: 35,
                  color: (selectedindex == index)
                      ? Colors.black
                      : Colors.transparent,
                )
              ],
            )),
      );
}
