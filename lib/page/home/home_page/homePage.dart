import 'package:coffee_shop/card/hot_deals_products.dart';
import 'package:coffee_shop/card/new_products_card.dart';
import 'package:coffee_shop/card/voucher_card.dart';
import 'package:coffee_shop/page/home/home_page/widget/home_slider.dart';
import 'package:coffee_shop/units/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: double.infinity,
        surfaceTintColor: AppColors.voucherColor,
        shadowColor: AppColors.voucherColor,
        // width: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Container(
                    height: 200,
                    decoration: const BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(78))),
                    child: const Center(
                      child: ListTile(
                        leading: SizedBox(
                          height: 70,
                          width: 70,
                          child: CircleAvatar(),
                        ),
                        title: Text(
                          'Thanh Bui',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        subtitle: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.bolt,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              'New',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          const Divider(
                            color: Color(0xFFDADADA),
                            height: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListTile(
                            selectedColor: Colors.blue,
                            selectedTileColor: Colors.blue,
                            leading: const Icon(Icons.home, size: 30),
                            title: const Text(
                              'Home',
                              style: TextStyle(fontSize: 24),
                            ),
                            onTap: () {
                              // Navigator.pushNamed(context, HomePage.routerName);
                            },
                          ),
                          ListTile(
                            leading: const Icon(
                              Icons.library_books,
                              size: 30,
                            ),
                            title: const Text(
                              'Transaction history',
                              style: TextStyle(fontSize: 24),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                              leading:
                                  const Icon(Icons.account_circle, size: 30),
                              title: const Text('My account',
                                  style: TextStyle(fontSize: 24)),
                              onTap: () {}),
                          ListTile(
                              leading: const Icon(Icons.favorite, size: 30),
                              title: const Text('Your favorite',
                                  style: TextStyle(fontSize: 24)),
                              onTap: () {}),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            color: Color(0xFFDADADA),
                            height: 1,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ListTile(
                              leading: const Icon(Icons.settings, size: 30),
                              title: const Text('Setting',
                                  style: TextStyle(fontSize: 24)),
                              onTap: () {}),
                          ListTile(
                              leading: const Icon(Icons.contacts, size: 30),
                              title: const Text('Contact us',
                                  style: TextStyle(fontSize: 24)),
                              onTap: () {}),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Positioned(
                right: 20,
                bottom: 0,
                child: SizedBox(
                  height: 40,
                  width: 150,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Log out',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        child: Icon(
                          Icons.logout,
                          size: 22,
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 120),
            child: IconButton(
              icon: const Icon(
                Icons.menu_sharp,
                color: Colors.white,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        toolbarHeight: 180,
        backgroundColor: AppColors.mainColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 120),
            child: Ink(
              decoration: const ShapeDecoration(
                color: AppColors.buttonColor2,
                shape: CircleBorder(),
              ),
              child: IconButton(
                iconSize: 35,
                icon: const Icon(Icons.notifications_none_rounded),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          )
        ],
        flexibleSpace: Container(
          margin: const EdgeInsets.only(top: 130),
          height: 110,
          width: 300,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                  width: 300,
                  child: Text(
                    'Welcom to,',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 45,
                  width: 300,
                  child: Text(
                    'KOFEHOLIC',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsetsDirectional.all(20),
        child: Column(
          children: [
            const HomeSlider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'New',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor),
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Center(
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 210,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return const NewProductsCard();
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Hot deals',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor),
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Center(
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 210,
              width: double.infinity,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return const HotDealsProducts();
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Combo',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor),
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Center(
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Your voucher',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w500,
                      color: AppColors.mainColor),
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: 80,
                      decoration: const BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: const Center(
                        child: Text(
                          'See all',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 400,
              width: double.infinity,
              child: ListView.separated(
                itemCount: 4,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return const VoucherCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
