//import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //Key? is sometimes used for referencing, to handle dynamic behaviour of widget
  //it is an construtor
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
            child: Column(
          children: [
            ProductBox(
              productImage: "assets/image.png",
              productName: "Aloo",
              productCategory: "Sabzi",
              productPrice: 50.00,
            ),
            ProductBox(
              productImage: "assets/image.png",
              productName: "Boti",
              productCategory: "Meal",
              productPrice: 500.00,
            ),
            ProductBox(
              productImage: "assets/image.png",
              productName: "Keema",
              productCategory: "Meal",
              productPrice: 400.00,
            ),
            ProductBox(
              productImage: "assets/image.png",
              productName: "Roti",
              productCategory: "Ingrdients",
              productPrice: 20.00,
            ),
          ],
        ))
        //Blue line becuase the constant string is passed, hence provide const
        //infront of widget,
        );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({
    Key? key,
    required this.productImage,
    required this.productName,
    required this.productCategory,
    required this.productPrice,
  }) : super(key: key);

  final String productImage;
  final String productName;
  final String productCategory;
  final double productPrice;

  Widget build(BuildContext context) {
    return Container(
        height: 120,
        padding: const EdgeInsets.all(5),
        child: Card(
            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Image.asset('assets/image.jpg'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("$productName"),
              Text("$productCategory"),
              Text("$productPrice"),
            ],
          )
        ])));
  }
}

