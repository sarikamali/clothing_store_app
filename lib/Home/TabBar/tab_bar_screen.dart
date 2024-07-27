import 'package:clothing_store_app/Home/TabBar/all_view.dart';
import 'package:clothing_store_app/Home/TabBar/man.dart';
import 'package:clothing_store_app/Home/TabBar/newest.dart';
import 'package:clothing_store_app/Home/TabBar/popular.dart';
import 'package:clothing_store_app/Home/TabBar/woman.dart';
import 'package:flutter/material.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 700,
      child: TabBarView(
        children: [
          AllProductScreen(),
          NewestScreen(),
          PopularScreen(),
          ManScreen(),
          WomanScreen(),
        ],
      ),
    );
  }
}
