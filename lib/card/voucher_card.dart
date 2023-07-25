import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';

class VoucherCard extends StatelessWidget {
  const VoucherCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: AlignmentDirectional.center,
      alignment: Alignment.centerLeft,
      children: [
        Container(
          height: 104,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: AppColors.voucherColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(left: 10, right: 10, top: 10),
                      width: 80,
                      height: 20,
                      decoration: const BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.all(Radius.circular(3))),
                      child: const Center(
                        child: Text(
                          'DELIVERY',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      height: 38,
                      child: const Center(
                          child: Text(
                        '\$5',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: AppColors.mainColor),
                      )),
                    ))
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 183,
                      margin: const EdgeInsets.only(left: 20, top: 10),
                      child: const Text(
                        '\$5minimum discount for order over \$10 -----------',
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 10, bottom: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'expired: 10/1/2021',
                            style: TextStyle(
                                color: AppColors.buttonColor2,
                                fontSize: 10,
                                fontWeight: FontWeight.w400),
                          ),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                margin: const EdgeInsets.only(bottom: 5),
                                height: 30,
                                width: 85,
                                decoration: const BoxDecoration(
                                    color: AppColors.buttonColor2,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(6))),
                                child: const Center(
                                  child: Text(
                                    'Apply now',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 100),
          height: 114,
          width: 10,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 10,
                height: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5)))),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Flex(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        direction: Axis.vertical,
                        children: List.generate(
                            (constraints.constrainHeight() / 9).floor(),
                            (index) => SizedBox(
                                  width: 6,
                                  height: 6,
                                  child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 1,
                                          offset: const Offset(0, 1),
                                        ),
                                      ],
                                          shape: BoxShape.circle,
                                          color: Colors.white)),
                                )));
                  },
                ),
              )),
              // Expanded(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       Flex(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         direction: Axis.vertical,
              //         children: List.generate(
              //             9,
              //             (index) => const SizedBox(
              //                   width: 8,
              //                   height: 8,
              //                   child: DecoratedBox(
              //                       decoration: BoxDecoration(
              //                           shape: BoxShape.circle,
              //                           color: Colors.white)),
              //                 )),
              //       ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                width: 10,
                height: 10,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5)))),
              )
            ],
          ),
        )
      ],
    );
  }
}
