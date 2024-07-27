import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.brown.withOpacity(0.1),
              child: Image.asset(
                'assets/images/dress.png',
                height: 45,
                width: 45,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Dress',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.brown.withOpacity(0.1),
              child: Image.asset(
                'assets/images/cosmetic.png',
                height: 55,
                width: 55,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Cosmetic',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.brown.withOpacity(0.1),
              child: Image.asset(
                'assets/images/shoes.png',
                height: 5550,
                width: 50,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Shoes',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: Colors.brown.withOpacity(0.1),
              child: Image.asset(
                'assets/images/jewellery.png',
                height: 65,
                width: 65,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              'Jewellery',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
