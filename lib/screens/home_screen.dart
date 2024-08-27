import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_ecommerce_app/components/FavoriteBloc.dart';
import 'package:shoes_ecommerce_app/widgets/home_widgets/BigHomeItem.dart';

import 'package:shoes_ecommerce_app/widgets/home_widgets/BottomBar.dart';
import 'package:shoes_ecommerce_app/widgets/home_widgets/HomeAppBar.dart';
import 'package:shoes_ecommerce_app/widgets/home_widgets/HomeItem.dart';
import 'package:shoes_ecommerce_app/widgets/home_widgets/Logos.dart';
import 'package:shoes_ecommerce_app/widgets/home_widgets/RowText.dart';
import 'package:shoes_ecommerce_app/widgets/home_widgets/Search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final Color backgroundColor = const Color(0xffF8F9FA);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteBloc(),
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          backgroundColor: backgroundColor,
          elevation: 0,
          title: const HomeAppBar(),
          automaticallyImplyLeading: false,
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xff1A2530),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
              width: 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/home/drawer.jpg'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    'Salah Fathy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 25),
                  const ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.home_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home Page',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'My Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.favorite_border_sharp,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Favorite',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.local_shipping_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Orders',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const Divider(color: Colors.grey, thickness: 2),
                  const SizedBox(height: 25),
                  const ListTile(
                    leading: Icon(
                      Icons.exit_to_app_rounded,
                      color: Colors.red,
                    ),
                    title: Text(
                      'sign Out',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Column(
                children: [
                  Search(),
                  SizedBox(height: 20),
                  Logos(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: RowText(text: 'Popular Shoes'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: const [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      HomeItem(
                        image: 'assets/images/home/home sheos1.png',
                        title: 'Nike Jordan',
                        price: '\$493.00',
                      ),
                      HomeItem(
                        image: 'assets/images/home/home sheos2.png',
                        title: 'Nike Air Max',
                        price: '\$897.99',
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: RowText(text: 'New Arrivals'),
                  ),
                  BigHomeItem(),
                ],
              ),
            ),
            const BottomBar(),
          ],
        ),
      ),
    );
  }
}
