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
        appBar: AppBar(
          backgroundColor: backgroundColor,
          title: const HomeAppBar(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: ListView(
            children: const [
              Search(),
              SizedBox(height: 20),
              Logos(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: RowText(text: 'Popular Shoes'),
              ),
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
              SizedBox(height: 20),
              BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
