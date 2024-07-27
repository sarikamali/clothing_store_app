import 'package:clothing_store_app/My_Cart/my_cart_screen.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            height: 430,
            decoration: const BoxDecoration(
              // color: Colors.pink,
              image: DecorationImage(
                image: AssetImage('assets/images/newest1.webp'),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black.withOpacity(0.6),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
                const Text(
                  'Product Details',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black.withOpacity(0.6),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Female's Style",
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey.withOpacity(0.9)),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "4.9",
                      style: TextStyle(
                          fontSize: 15, color: Colors.grey.withOpacity(0.9)),
                    ),
                  ],
                ),
                const Text(
                  'Black Jacket',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product Details',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'Lorem ipsum dolor sit amet, consecrator\nadipiscing alit, sed do elusion tempore incididunt\nut labor et dolor magna aliqua.',
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'select Size',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.brown,
                              borderRadius: BorderRadius.circular(8)),
                          child: const Center(
                            child: Text(
                              'S',
                              style: TextStyle(
                                fontSize: 18,
                                //  fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Text(
                          'M',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'L',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'XL',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'XXL',
                          style: TextStyle(
                            fontSize: 18,

                            ///fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text(
                          'XXXL',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      children: [
                        const Text(
                          'Select Color : ',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Black ',
                          style: TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price',
                              style: TextStyle(
                                  fontSize: 15,
                                  // fontWeight: FontWeight.w600,
                                  color: Colors.black.withOpacity(0.6)),
                            ),
                            const Text(
                              '\$83.97',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                //color: Colors.black.withOpacity(0.6),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const MyCartScreen(),
                                ));
                          },
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.circular(30)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_bag, color: Colors.white),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  'Add to Cart',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
