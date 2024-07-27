import 'package:clothing_store_app/My_Cart/chekout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
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
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(Icons.add_circle_rounded),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 0.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/shirt2.jpg'),
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
                        'Pink Jacket',
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
                        '\$90.97',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(Icons.add_circle_rounded),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 0.3,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              actions: [
                                Column(
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      padding: const EdgeInsets.only(
                                          left: 15, right: 4),
                                      height: 50,
                                      width: 500,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        border: Border.all(width: 1),
                                      ),
                                      child: Row(
                                        children: [
                                          const Text(
                                            'Promo Code',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          const Spacer(),
                                          Container(
                                            height: 40,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.brown.withOpacity(0.9),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            child: const Center(
                                                child: Text(
                                              'Apply',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white),
                                            )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Sub-Total',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors.black.withOpacity(0.6)
                                              // fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        const Text(
                                          '\$407.94',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Delivery Fee',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors.black.withOpacity(0.6)
                                              // fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        const Text(
                                          '\$25.00',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Discount',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors.black.withOpacity(0.6)
                                              // fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        const Text(
                                          '-\$35.00',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Divider(),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Total Cost',
                                          style: TextStyle(
                                              fontSize: 18,
                                              color:
                                                  Colors.black.withOpacity(0.6)
                                              // fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        const Text(
                                          '\$397.94',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Container(
                                        // padding: const EdgeInsets.only(top: 9, left: 13),
                                        height: 45,
                                        width: 400,
                                        decoration: BoxDecoration(
                                          color: Colors.brown.withOpacity(0.9),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(
                                              width: 1.5, color: Colors.brown),
                                        ),
                                        child: TextButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Chekout(),
                                                  ));
                                            },
                                            child: const Text(
                                              'Proceed to Chekout',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ))),
                                  ],
                                )
                              ],
                            ));
                  },
                  child: Container(
                    //  margin: const EdgeInsets.only(top: 20, bottom: 20),
                    height: 110,
                    width: 80,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          bottomRight: Radius.circular(8)),
                      color: Colors.red,
                      image: DecorationImage(
                          image: AssetImage('assets/images/shirt6.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Blue Shirt',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      'Size : M',
                      style: TextStyle(
                        fontSize: 15,
                        //  fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '\$70.50',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.remove_circle,
                      color: Colors.black.withOpacity(0.2),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      '1',
                      style: TextStyle(
                        fontSize: 16,
                        //fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(Icons.add_circle_rounded),
                  ],
                ),
                const SizedBox(
                  width: 8,
                ),
                InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              actions: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Column(
                                  children: [
                                    const Text(
                                      'Remove From Cart?',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800),
                                    ),
                                    const Divider(),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          child: const Image(
                                            image: AssetImage(
                                                'assets/images/shirt2.jpg'),
                                            height: 65,
                                            width: 70,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 6,
                                        ),
                                        const Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Blue Shirt',
                                              style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            Text(
                                              'Size : M',
                                              style: TextStyle(
                                                fontSize: 13,
                                                //  fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                            Text(
                                              '\$70.50',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          width: 50,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.remove_circle,
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const Text(
                                              '1',
                                              style: TextStyle(
                                                fontSize: 16,
                                                //fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            const Icon(
                                                Icons.add_circle_rounded),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 40,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          //  padding: const EdgeInsets.only(left: 10),
                                          height: 45,
                                          width: 120,
                                          decoration: BoxDecoration(
                                            // color: Colors.pink,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            border: Border.all(width: 1.5),
                                          ),
                                          child: TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'Cancle',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Container(
                                            // padding: const EdgeInsets.only(top: 9, left: 13),
                                            height: 45,
                                            width: 120,
                                            decoration: BoxDecoration(
                                              color:
                                                  Colors.brown.withOpacity(0.9),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              border: Border.all(
                                                  width: 1.5,
                                                  color: Colors.brown),
                                            ),
                                            child: TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Yes, Logout',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white),
                                                ))),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ));
                  },
                  child: Container(
                    height: 130,
                    width: 60,
                    decoration:
                        BoxDecoration(color: Colors.pink.withOpacity(0.2)),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
            const Divider(
              thickness: 0.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/all2.jpg'),
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
                        'Black Shirt',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Size : XLL',
                        style: TextStyle(
                          fontSize: 15,
                          //  fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '\$100.55',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(Icons.add_circle_rounded),
                    ],
                  )
                ],
              ),
            ),
            const Divider(
              thickness: 0.3,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.red,
                      image: const DecorationImage(
                          image: AssetImage('assets/images/shirt7.jpg'),
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
                        'T-Shirt Copy Color',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        'Size : XLL',
                        style: TextStyle(
                          fontSize: 15,
                          //  fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        '\$70.97',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_circle,
                        color: Colors.black.withOpacity(0.2),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          //fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      const Icon(Icons.add_circle_rounded),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
