import 'package:booklyapp/core/asset_date.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetDate.test),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
