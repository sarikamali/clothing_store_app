import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                    image: AssetImage('assets/images/newest1.webp'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Black Jacket',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Size : XL',
                  style: TextStyle(
                    fontSize: 15,
                    //  fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$83.97',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                    image: AssetImage('assets/images/newest2.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Black Jacket',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Size : XL',
                  style: TextStyle(
                    fontSize: 15,
                    //  fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$83.97',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                    image: AssetImage('assets/images/newest3.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Black Jacket',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Size : XL',
                  style: TextStyle(
                    fontSize: 15,
                    //  fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  '\$83.97',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
