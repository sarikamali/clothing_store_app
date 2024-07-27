// ignore_for_file: camel_case_types

import 'package:clothing_store_app/Favorite/dress.dart';
import 'package:clothing_store_app/Favorite/jewellery.dart';
import 'package:clothing_store_app/Favorite/saree.dart';
import 'package:clothing_store_app/Favorite/shirt.dart';
import 'package:clothing_store_app/Favorite/shoes.dart';
import 'package:flutter/material.dart';

class Tab_Bar_Screen extends StatefulWidget {
  const Tab_Bar_Screen({super.key});

  @override
  State<Tab_Bar_Screen> createState() => _Tab_Bar_ScreenState();
}

class _Tab_Bar_ScreenState extends State<Tab_Bar_Screen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 700,
      child: TabBarView(
        children: [
          ShirtScreen(),
          SareeScreen(),
          DressScreen(),
          ShoesScreen(),
          JewelleryScreen()
        ],
      ),
    );
  }
}
