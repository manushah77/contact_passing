import 'dart:math';
import 'package:contact/cons.dart';
import 'package:contact/detail.dart';
import 'package:contact/product.dart';
import 'package:flutter/material.dart';

class Gcontact extends StatefulWidget {
  @override
  _GcontactState createState() => _GcontactState();
}

class _GcontactState extends State<Gcontact> {
  List<Product> p_list = [
    Product(
      name: 'Mansoor Ali ',
      photo: 'images/manu.jpg',
      experince: 3,
    ),
    Product(
      name: 'Salabat Ali ',
      photo: 'images/salu.jpg',
      experince: 1,
    ),
    Product(
      name: 'Aizad Ali',
      photo: 'images/aizu.jpg',
      experince: 4,
    ),
    Product(
      name: 'Blue Man ',
      photo: 'images/blue.png',
      experince: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(child: Text('Develpoer Contact')),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          for (var x in p_list)
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
                      name: x.name,
                      photo: x.photo,
                      experince: x.experince,
                    ),
                  ),
                );
              },
              child: Const(
                image: x.photo,
                name: x.name,
              ),
            ),
        ],
      ),
    );
  }
}
