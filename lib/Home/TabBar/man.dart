import 'package:clothing_store_app/Home/TabBar/model.dart';
import 'package:flutter/material.dart';

class ManScreen extends StatefulWidget {
  const ManScreen({super.key});

  @override
  State<ManScreen> createState() => _ManScreenState();
}

class _ManScreenState extends State<ManScreen> {
  List photos = [
    ManData(
        image: 'assets/images/men1.jpg', text: 'White Shirt', price: '\$83.97'),
    ManData(
        image: 'assets/images/men2.webp', text: 'Perfume', price: '\$120.50'),
    ManData(image: 'assets/images/men3.jpg', text: 'Hudi', price: '\$90.97'),
    ManData(
        image: 'assets/images/men4.webp',
        text: 'Spark Shoes',
        price: '\$100.30'),
    ManData(
        image: 'assets/images/men5.jpg', text: 'Blue Jacket', price: '\$80.30'),
    ManData(
        image: 'assets/images/men6.webp', text: 'Sleeper', price: '\$80.30'),
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
                      // color: Colors.white,
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
