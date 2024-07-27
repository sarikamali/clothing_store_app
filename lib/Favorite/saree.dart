import 'package:clothing_store_app/Favorite/model1.dart';
import 'package:flutter/material.dart';

class SareeScreen extends StatefulWidget {
  const SareeScreen({super.key});

  @override
  State<SareeScreen> createState() => _SareeScreenState();
}

class _SareeScreenState extends State<SareeScreen> {
  List photos = [
    Saree(
      image: 'assets/images/saree1.webp',
      text: 'Net Pink Saree',
      price: '\$1200.90',
    ),
    Saree(
      image: 'assets/images/saree2.webp',
      text: 'Paithani Saree',
      price: '\$600.50',
    ),
    Saree(
      image: 'assets/images/saree3.jpg',
      text: 'Model saree',
      price: '\$900.66',
    ),
    Saree(
      image: 'assets/images/saree4.jpg',
      text: 'Wedding Saree',
      price: '\$1200.10',
    ),
    Saree(
      image: 'assets/images/saree5.webp',
      text: 'Cotton Saree',
      price: '\$800.50',
    ),
    Saree(
      image: 'assets/images/saree6.webp',
      text: 'Net Blue Saree',
      price: '\$500.90',
    ),
    Saree(
      image: 'assets/images/saree7.webp',
      text: 'Patiyala Saree',
      price: '\$900.70',
    ),
    Saree(
      image: 'assets/images/saree8.webp',
      text: 'Zig Zak Saree',
      price: '\$600.90',
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
                    //  color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
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
                      fontSize: 16, fontWeight: FontWeight.w300),
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
