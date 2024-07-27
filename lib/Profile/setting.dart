import 'package:clothing_store_app/Profile/password_manager.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Setting',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const ListTile(
              leading: Icon(
                Icons.person,
                size: 28,
              ),
              title: Text(
                'Notification Setting',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PasswordManager(),
                    ));
              },
              child: const ListTile(
                leading: Icon(
                  Icons.lock_clock_rounded,
                  size: 25,
                ),
                title: Text(
                  'Password Manager',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                Icons.delete,
                size: 25,
              ),
              title: Text(
                'Delete Account',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
