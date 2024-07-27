// ignore_for_file: avoid_unnecessary_containers, unused_local_variable

import 'package:clothing_store_app/Home/category.dart';
import 'package:clothing_store_app/Home/search_bar_screen.dart';
import 'package:clothing_store_app/Home/slider_screen.dart';
import 'package:flutter/material.dart';
import 'TabBar/tab_bar_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Location'),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 20,
                              color: Colors.brown,
                            ),
                            Text(
                              'New York, USA sara',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.brown,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.brown,
                            )
                          ],
                        )
                      ],
                    ),
                    CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.1),
                        child: const Icon(
                          Icons.notification_add,
                          color: Colors.brown,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const SearchBarScreen(),
                const SizedBox(
                  height: 20,
                ),
                const SliderScreen(),
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        color: Colors.brown,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CategoryScreen(),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Flash Sale',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Closing in : ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.brown,
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          '02',
                          style: TextStyle(
                              color: Colors.brown, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Text(' : '),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          '12',
                          style: TextStyle(
                              color: Colors.brown, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const Text(' : '),
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        color: Colors.brown.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Center(
                        child: Text(
                          '56',
                          style: TextStyle(
                              color: Colors.brown, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TabBar(
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelStyle: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                  isScrollable: true,
                  tabAlignment: TabAlignment.start,
                  dividerHeight: BorderSide.strokeAlignCenter,
                  indicatorPadding: const EdgeInsetsDirectional.only(
                    top: 5,
                    bottom: 5,
                  ),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.brown.withOpacity(0.8)),
                  tabs: const [
                    Tab(text: 'All'),
                    Tab(text: 'Newest'),
                    Tab(text: 'Popular'),
                    Tab(text: 'Man'),
                    Tab(text: 'Woman'),
                  ],
                ),
                const TabBarScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
