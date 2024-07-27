import 'package:clothing_store_app/Favorite/model1.dart';
import 'package:flutter/material.dart';

class DressScreen extends StatefulWidget {
  const DressScreen({super.key});

  @override
  State<DressScreen> createState() => _DressScreenState();
}

class _DressScreenState extends State<DressScreen> {
  List photos = [
    Dress(
      image: 'assets/images/dresss1.jpg',
      text: 'White Lenga',
      price: '\$83.97',
    ),
    Dress(
      image: 'assets/images/dress2.webp',
      text: 'Red crop Dress',
      price: '\$70.30',
    ),
    Dress(
      image: 'assets/images/dress3.webp',
      text: 'Cotton Panjabi',
      price: '\$82.50',
    ),
    Dress(
      image: 'assets/images/dress4.jpg',
      text: 'Yellow patiyala',
      price: '\$86.97',
    ),
    Dress(
      image: 'assets/images/dress5.webp',
      text: 'Colorful Lenga',
      price: '\$60.66',
    ),
    Dress(
      image: 'assets/images/dress6.jpg',
      text: 'Crop Lenga',
      price: '\$70.97',
    ),
    Dress(
      image: 'assets/images/dress7.webp',
      text: 'Weding Lenga',
      price: '\$89.30',
    ),
    Dress(
      image: 'assets/images/dress8.jpg',
      text: 'Purple Long Lenga',
      price: '\$100.97',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              //crossAxisSpacing: 10,
              // mainAxisSpacing: 5,
              mainAxisExtent: 330),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 10, top: 10),
                  margin: const EdgeInsets.only(top: 30, right: 15),
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    //color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: AssetImage(photos[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white.withOpacity(0.9),
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
