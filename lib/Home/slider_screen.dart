import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  final myItem = [
    Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 15, top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.brown.withOpacity(0.2),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'New Collection',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Discount 50% for'),
              const Text('the first transaction'),
              const SizedBox(
                height: 6,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.brown),
                ),
                onPressed: () {},
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/dress1.png'),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 15, top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.brown.withOpacity(0.2),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'New Collection',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Discount 70% for'),
              const Text('the Second transaction'),
              const SizedBox(
                height: 6,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.brown),
                ),
                onPressed: () {},
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/dress1.png'),
        ],
      ),
    ),
    Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.only(left: 15, top: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.brown.withOpacity(0.2),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'New Collection',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 6,
              ),
              const Text('Discount 40% for'),
              const Text('the third transaction'),
              const SizedBox(
                height: 6,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.brown),
                ),
                onPressed: () {},
                child: const Text(
                  'Shop Now',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/dress1.png'),
        ],
      ),
    ),
  ];
  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: myItem,
          options: CarouselOptions(
            // autoPlay: true,
            aspectRatio: 2.0,
            height: 180,
            onPageChanged: (index, reason) {
              setState(() {
                myCurrentIndex = index;
              });
            },
          ),
        ),
        AnimatedSmoothIndicator(
          activeIndex: myCurrentIndex,
          count: myItem.length,
          effect: WormEffect(
            dotHeight: 8,
            dotWidth: 8,
            spacing: 5,
            dotColor: Colors.grey.withOpacity(0.3),
            activeDotColor: Colors.brown,
            paintStyle: PaintingStyle.fill,
          ),
        ),
      ],
    );
  }
}
