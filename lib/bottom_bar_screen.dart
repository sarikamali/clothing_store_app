import 'package:clothing_store_app/Cart/cart_screen.dart';
import 'package:clothing_store_app/Favorite/wishlist_screen.dart';
import 'package:clothing_store_app/Home/home_screen.dart';
import 'package:clothing_store_app/Message/message_screen.dart';
import 'package:clothing_store_app/Profile/profile_screen.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectedIndex = 0;
  List pages = [
    const HomeScreen(),
    const CartScreen(),
    const WishlistScreen(),
    const MessageScreen(),
    const ProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            // print(index);
            selectedIndex = index;
          });
        },
        selectedItemColor: Colors.brown,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_rounded), label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
