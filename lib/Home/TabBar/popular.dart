import 'package:clothing_store_app/Home/TabBar/model.dart';
import 'package:flutter/material.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  List photos = [
    PopularData(
        image: 'assets/images/popular1.jpg',
        text: 'Fashion Top',
        price: '\$83.97'),
    PopularData(
        image: 'assets/images/popular2.webp',
        text: 'Sendel',
        price: '\$120.50'),
    PopularData(
        image: 'assets/images/popu3.jpg',
        text: 'White Jacket',
        price: '\$90.97'),
    PopularData(
        image: 'assets/images/popular4.webp', text: 'jagger', price: '\$60.30'),
    PopularData(
        image: 'assets/images/popular5.jpg',
        text: 'Jins jacket',
        price: '\$90.60'),
    PopularData(
        image: 'assets/images/popular6.webp', text: 'Shoes', price: '\$30.90'),
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
                      //color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                          image: AssetImage(photos[index].image),
                          fit: BoxFit.cover)),
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
