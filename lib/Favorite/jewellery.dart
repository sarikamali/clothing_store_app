import 'package:clothing_store_app/Favorite/model1.dart';
import 'package:flutter/material.dart';

class JewelleryScreen extends StatefulWidget {
  const JewelleryScreen({super.key});

  @override
  State<JewelleryScreen> createState() => _JewelleryScreenState();
}

class _JewelleryScreenState extends State<JewelleryScreen> {
  List photos = [
    Jewellery(
      image: 'assets/images/jelery1.webp',
      text: 'MS.Dhoni Bacelate',
      price: '\$450.50',
    ),
    Jewellery(
      image: 'assets/images/jelery2.jpg',
      text: 'Pendel Set',
      price: '\$500.90',
    ),
    Jewellery(
      image: 'assets/images/jelery3.jpg',
      text: 'Chain',
      price: '\$600.30',
    ),
    Jewellery(
      image: 'assets/images/jelery4.jpg',
      text: 'Silver Bracelate',
      price: '\$800.80',
    ),
    Jewellery(
      image: 'assets/images/jelery5.webp',
      text: 'Congen Bacelate',
      price: '\$700.65',
    ),
    Jewellery(
      image: 'assets/images/jelery6.webp',
      text: 'Silver Bracelate',
      price: '\$450.50',
    ),
    Jewellery(
      image: 'assets/images/jelery7.jpg',
      text: 'Nice Congen',
      price: '\$850.70',
    ),
    Jewellery(
      image: 'assets/images/jelery8.jpeg',
      text: 'Chain Silver',
      price: '\$670.20',
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
                    fontSize: 16,
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
