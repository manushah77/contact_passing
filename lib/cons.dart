import 'package:flutter/material.dart';

class Const extends StatelessWidget {
  const Const({required this.image, required this.name});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 50,
          child: Image.asset(
            image,
          ),
        ),
        Text(
          '${name} (Application Developer)',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
