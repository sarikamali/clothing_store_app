import 'package:flutter/material.dart';

class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 310,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
              prefixIcon: const Icon(Icons.search),
              // prefixStyle:
              //     TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Icon(
            Icons.filter_alt,
            color: Colors.white,
            size: 25,
          ),
        ),
      ],
    );
  }
}
