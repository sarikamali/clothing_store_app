import 'package:clothing_store_app/Home/TabBar/model.dart';
import 'package:flutter/material.dart';

class NewestScreen extends StatefulWidget {
  const NewestScreen({super.key});

  @override
  State<NewestScreen> createState() => _NewestScreenState();
}

class _NewestScreenState extends State<NewestScreen> {
  List photos = [
    NewestData(
        image: 'assets/images/newest1.webp',
        text: 'Black jacket',
        price: '\$83.97'),
    NewestData(
        image: 'assets/images/newest2.jpg',
        text: 'jeweller',
        price: '\$120.50'),
    NewestData(
        image: 'assets/images/newest3.jpg',
        text: 'Makeup Style',
        price: '\$90.97'),
    NewestData(
        image: 'assets/images/newest4.jpg', text: 'T-Shirt', price: '\$60.30'),
    NewestData(
        image: 'assets/images/newest5.jpg',
        text: 'Top yellow',
        price: '\$70.30'),
    NewestData(
        image: 'assets/images/newest6.jpg',
        text: 'Foundation',
        price: '\$90.00'),
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
                      fit: BoxFit.cover),
                ),
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
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ],
          );
        },
      ),
    );
  }
}
