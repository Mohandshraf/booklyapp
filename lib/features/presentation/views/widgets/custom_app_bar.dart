import 'package:booklyapp/core/asset_date.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 34),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.only(left: 1),
            child: Image.asset(AssetDate.logo, width: 150, height: 20),
          ),
        ],
      ),
    );
  }
}
