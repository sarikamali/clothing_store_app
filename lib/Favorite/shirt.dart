import 'package:clothing_store_app/Favorite/model1.dart';
import 'package:clothing_store_app/product/product_screen.dart';
import 'package:flutter/material.dart';

class ShirtScreen extends StatefulWidget {
  const ShirtScreen({super.key});

  @override
  State<ShirtScreen> createState() => _ShirtScreenState();
}

class _ShirtScreenState extends State<ShirtScreen> {
  List photos = [
    Shirt(
      image: 'assets/images/shirt1.webp',
      text: 'Black Jacket',
      price: '\$83.97',
    ),
    Shirt(
      image: 'assets/images/shirt2.jpg',
      text: 'Pink jacket',
      price: '\$65.40',
    ),
    Shirt(
      image: 'assets/images/shirt3.webp',
      text: 'Red Shirt',
      price: '\$80.60',
    ),
    Shirt(
      image: 'assets/images/shirt4.jpg',
      text: 'Black jacket',
      price: '\$90.60',
    ),
    Shirt(
      image: 'assets/images/shirt5.jpg',
      text: 'Woilate Jacket',
      price: '\$50.70',
    ),
    Shirt(
      image: 'assets/images/shirt6.jpg',
      text: 'Black jacket',
      price: '\$60.55',
    ),
    Shirt(
      image: 'assets/images/shirt7.jpg',
      text: 'Cream T-Shirt',
      price: '\$75.55',
    ),
    Shirt(
      image: 'assets/images/shirt8.jpg',
      text: 'Blue Shirt',
      price: '\$90.00',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: photos.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          // crossAxisSpacing: 10,
          mainAxisSpacing: 14,
          mainAxisExtent: 250,
        ),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProductScreen(),
                      ));
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 8, top: 8),
                  margin: const EdgeInsets.only(top: 10, right: 18),
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        image: AssetImage(photos[index].image),
                        //alignment: Alignment.topCenter,
                        fit: BoxFit.cover),
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
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                //'Sarika',
                photos[index].text,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
              Text(
                //'\$83.97',
                photos[index].price,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
