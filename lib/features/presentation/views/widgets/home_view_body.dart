import 'package:booklyapp/core/asset_date.dart';
import 'package:booklyapp/features/presentation/views/widgets/custom_app_bar.dart';
import 'package:booklyapp/features/presentation/views/widgets/custom_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomAppBar(), CustomListView()]);
  }
}
