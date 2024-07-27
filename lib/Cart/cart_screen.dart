import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        // appBar: AppBar(
        //   title: const Padding(
        //     padding: EdgeInsets.only(top: 17),
        //     child: Row(
        //       children: [
        //         Icon(Icons.arrow_back_ios_sharp),
        //         SizedBox(
        //           width: 100,
        //         ),
        //         Text(
        //           'My Wishlist',
        //           style: TextStyle(fontWeight: FontWeight.bold),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
