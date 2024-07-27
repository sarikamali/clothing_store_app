import 'package:clothing_store_app/Favorite/model1.dart';
import 'package:flutter/material.dart';

class ShoesScreen extends StatefulWidget {
  const ShoesScreen({super.key});

  @override
  State<ShoesScreen> createState() => _ShoesScreenState();
}

class _ShoesScreenState extends State<ShoesScreen> {
  List photos = [
    Shoes(
      image: 'assets/images/shoess1.jpg',
      text: 'Cotton Shoes Sky Blue',
      price: '\$500.66',
    ),
    Shoes(
      image: 'assets/images/shoess2.webp',
      text: 'Baby Pink Girl Shoes',
      price: '\$600.50',
    ),
    Shoes(
      image: 'assets/images/shoess3.jpg',
      text: 'Blur Snekers',
      price: '\$700.6406',
    ),
    Shoes(
      image: 'assets/images/shoess4.webp',
      text: 'Black Snekers',
      price: '\$650.80',
    ),
    Shoes(
      image: 'assets/images/shoess5.webp',
      text: 'Black Snekers girl Shoes',
      price: '\$790.90',
    ),
    Shoes(
      image: 'assets/images/shoess6.webp',
      text: 'Formal Shoes',
      price: '\$850.30',
    ),
    Shoes(
      image: 'assets/images/shoess7.webp',
      text: 'Army Shoes',
      price: '\$1000.00',
    ),
    Shoes(
      image: 'assets/images/shoess8.webp',
      text: 'WHite Spark Shoes',
      price: '\$970.60',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //crossAxisSpacing: 18,
              mainAxisSpacing: 14,
              mainAxisExtent: 250),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 8, top: 8),
                  margin: const EdgeInsets.only(top: 10, right: 18),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    //color: Colors.white,
                    image: DecorationImage(
                        image: AssetImage(photos[index].image),
                        fit: BoxFit.cover),
                  ),
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.7),
                    radius: 15,
                    child: const Icon(
                      Icons.favorite,
                      size: 18,
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  photos[index].text,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Text(
                  photos[index].price,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ],
            );
          }),
    );
  }
}
