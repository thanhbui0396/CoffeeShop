import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';

class ComboCard extends StatelessWidget {
  const ComboCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      height: 120,
      width: 250,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 120,
            width: 125,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topLeft: Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHo2b-FRd4DMHGHvLy74B_OFQH6Nnbwaqotw&usqp=CAU'),
                    fit: BoxFit.cover)),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: AppColors.voucherColor),
            height: 120,
            width: 125,
          )
        ],
      ),
    );
  }
}
