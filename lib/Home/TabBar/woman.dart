import 'package:clothing_store_app/Home/TabBar/model.dart';
import 'package:flutter/material.dart';

class WomanScreen extends StatefulWidget {
  const WomanScreen({super.key});

  @override
  State<WomanScreen> createState() => _WomanScreenState();
}

class _WomanScreenState extends State<WomanScreen> {
  List photos = [
    WomanData(
        image: 'assets/images/woman1.jpg',
        text: 'Black Kurti',
        price: '\$83.97'),
    WomanData(
        image: 'assets/images/woman2.webp',
        text: 'Hills Sendel',
        price: '\$120.50'),
    WomanData(
        image: 'assets/images/woman3.jpg', text: 'Crop Top', price: '\$90.97'),
    WomanData(
        image: 'assets/images/woman4.webp',
        text: 'Shoes Stylish',
        price: '\$70.30'),
    WomanData(
        image: 'assets/images/woman5.jpg',
        text: 'T-Shirt Pink',
        price: '\$90.30'),
    WomanData(
        image: 'assets/images/woman6.jpg',
        text: 'Eye_Liner',
        price: '\$130.30'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 18, mainAxisSpacing: 15),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    //  color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(photos[index].image),
                        fit: BoxFit.cover),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  photos[index].text,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                Text(
                  photos[index].price,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            );
          }),
    );
  }
}
