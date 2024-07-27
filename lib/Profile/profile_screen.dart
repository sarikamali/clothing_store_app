import 'package:clothing_store_app/Profile/setting.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(top: 17),
          child: Row(
            children: [
              Icon(Icons.arrow_back_ios),
              SizedBox(
                width: 130,
              ),
              Text(
                'Profile',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 55,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -8,
                    right: -5,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.edit_square,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Esther Howard',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 60,
            ),
            const ListTile(
              leading: Icon(
                Icons.person,
                size: 28,
              ),
              title: Text(
                'Your Profile',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.card_travel,
                size: 28,
              ),
              title: Text(
                'My Orders',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.people,
                size: 28,
              ),
              title: Text(
                'Invites Friends',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Divider(),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Setting(),
                    ));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.settings,
                  size: 28,
                ),
                title: Text(
                  'Setting',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: [
                      const SizedBox(
                        height: 10,
                      ),
                      Title(
                        color: Colors.deepPurple,
                        child: const Center(
                          child: Text(
                            'LogOut',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Are you sure you want to log out?',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            //  padding: const EdgeInsets.only(left: 10),
                            height: 45,
                            width: 130,
                            decoration: BoxDecoration(
                              // color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(width: 1.5),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancle',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              // padding: const EdgeInsets.only(top: 9, left: 13),
                              height: 45,
                              width: 130,
                              decoration: BoxDecoration(
                                color: Colors.brown.withOpacity(0.9),
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(width: 1.5, color: Colors.brown),
                              ),
                              child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Yes, Logout',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ))),
                        ],
                      ),
                    ],
                  ),
                );

                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => ,
                //     ));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.logout,
                  size: 28,
                ),
                title: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
