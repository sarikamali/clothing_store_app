import 'package:clothing_store_app/Favorite/tab_bar.dart';

import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 17),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios_sharp),
              SizedBox(
                width: 100,
              ),
              Text(
                'My Wishlist',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: DefaultTabController(
        length: 5,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 18),
            child: Column(
              children: [
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  dividerHeight: BorderSide.strokeAlignCenter,
                  indicatorPadding: const EdgeInsetsDirectional.only(
                    top: 5,
                    bottom: 5,
                  ),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.brown.withOpacity(0.8)),
                  tabs: const [
                    Tab(text: 'Shirt'),
                    Tab(text: 'Saree'),
                    Tab(text: 'Dress'),
                    Tab(text: 'Shoes'),
                    Tab(text: 'Jewellery'),
                  ],
                ),
                const Tab_Bar_Screen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
