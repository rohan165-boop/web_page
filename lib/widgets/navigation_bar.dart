import 'package:flutter/material.dart';

class MYNavigationBar extends StatelessWidget {
  const MYNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Text("Hello, My Roh AN"),
          CircleAvatar(
            radius: 20,
            child: Icon(
              Icons.person,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
