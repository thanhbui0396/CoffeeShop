import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';

class HotDealsProducts extends StatelessWidget {
  const HotDealsProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210,
      width: 130,
      decoration: const BoxDecoration(
          color: AppColors.voucherColor,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 130,
            width: 130,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/image/image_product/caramel.png',
                    ),
                    fit: BoxFit.cover)),
          ),

          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 26,
            width: 120,
            child: Text(
              'Capuchino',
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
              maxLines: 1,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: SizedBox(
              height: 12,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'price: ',
                    style: TextStyle(color: Colors.black45, fontSize: 10),
                  ),
                  Text(
                    '\$100',
                    style: TextStyle(color: AppColors.mainColor, fontSize: 11),
                  )
                ],
              ),
            ),
          ),
          // const SizedBox(
          //   height: 5,
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: SizedBox(
              height: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Icon(
                    Icons.star,
                    size: 15,
                    color: Colors.yellow,
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const Text(
                    '4.5',
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
