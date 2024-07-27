import 'package:clothing_store_app/Home/TabBar/model.dart';
import 'package:flutter/material.dart';

class AllProductScreen extends StatefulWidget {
  const AllProductScreen({super.key});

  @override
  State<AllProductScreen> createState() => _AllProductScreenState();
}

class _AllProductScreenState extends State<AllProductScreen> {
  List photos = [
    AllData(
        image: 'assets/images/all1.jpg', text: 'Crop Top ', price: '\$83.97'),
    AllData(
        image: 'assets/images/all2.jpg',
        text: 'Black Shirt',
        price: '\$120.50'),
    AllData(
        image: 'assets/images/all3.jpg', text: 'Model Type', price: '\$90.97'),
    AllData(
        image: 'assets/images/all4.webp',
        text: 'Spark Shoes',
        price: '\$70.30'),
    AllData(
        image: 'assets/images/all5.jpg',
        text: 'Jacket Pink',
        price: '\$100.00'),
    AllData(
        image: 'assets/images/all6.webp',
        text: 'Kit Cosmetic',
        price: '\$90.55'),
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
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
              Text(
                photos[index].price,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          );
        },
      ),
    );
  }
}
