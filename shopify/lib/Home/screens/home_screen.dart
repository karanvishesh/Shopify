import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopify/Home/Components/body.dart';
import 'package:shopify/components/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      backgroundColor: Colors.white,
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.black,
            ),
            onPressed: () {}),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.black,
            ),
            color: kTextColor,
            onPressed: () {}),
        SizedBox(
          width: kDefaultPaddin / 4,
        )
      ],
    );
  }
}
