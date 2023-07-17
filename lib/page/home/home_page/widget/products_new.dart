import 'package:flutter/material.dart';

class ProductsNew extends StatelessWidget {
  const ProductsNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: const EdgeInsets.only(right: 20),
            decoration: const BoxDecoration(color: Colors.amber),
            height: 210,
            width: 130,
          );
        },
      ),
    );
  }
}
