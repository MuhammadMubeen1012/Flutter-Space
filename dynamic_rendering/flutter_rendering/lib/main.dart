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
      home: ThirdScreen(),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

//1st screen
class MyHomePage extends StatelessWidget {
  final List<Product> data = [
    Product(
        image: "image.jpg", name: "Image1", description: "FS-1", price: 100),
    Product(
        image: "image.jpg", name: "Image2", description: "FS-2", price: 200),
    Product(
        image: "image.jpg", name: "Image3", description: "FS-3", price: 300),
    Product(
        image: "image.jpg", name: "Image4", description: "FS-4", price: 400),
  ];

  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => InkWell(
            child: ProductBox(
                image: data[index].image,
                name: data[index].name,
                description: data[index].description,
                price: data[index].price),
            onTap: () {
              //_showDialog(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DashBoard()));
            },
          ),
        )
        /*
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => GestureDetector(
            child: ProductBox(
                image: data[index].image,
                name: data[index].name,
                description: data[index].description,
                price: data[index].price),
            onTap: () {
              debugPrint((index + 1).toString());
            },
          ),
        )
        */
        /*
        body: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) => ProductBox(
              image: data[index].image,
              name: data[index].name,
              description: data[index].description,
              price: data[index].price),
        )
        */
        );
  }

  void _showDialog(BuildContext context) {
    var alert = AlertDialog(
      title: Text("Alert!"),
      content: Text("Do you really want to know?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Ok")),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel")),
      ],
    );

    showDialog(context: context, builder: (context) => alert);
  }
}

//2nd screen
class DashBoard extends StatelessWidget {
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
      ),
      body: const Center(
        child: Text("Dashboard"),
      ),
    );
  }
}

// ************* Product Box Widget ******************** //
class ProductBox extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final double price;

  ProductBox(
      {Key? key,
      required this.image,
      required this.name,
      required this.description,
      required this.price})
      : super(key: key);

  Widget build(BuildContext context) {
    return Container(
      height: 120,
      //edgeInsets is used to provide padding, it is an class has edges properties
      padding: const EdgeInsets.all(2),
      child: Card(
        child: Row(
          //Has children array, mainaxis(horizontal), crossaxis(vertical).
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "image.jpg",
              height: 100,
              width: 100,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    "Name",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    "Price",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Product {
  final String image;
  final String name;
  final String description;
  final double price;

  Product(
      {required this.image,
      required this.name,
      required this.description,
      required this.price});
}

//3rd screen

class ThirdScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ThirdScreen();
}

class _ThirdScreen extends State<ThirdScreen> {
  String name = "Hello World";

  Widget build(BuildContext buildContext) {
    return Scaffold(
      body: Center(
        child: InkWell(
          child: Text(name),
          onTap: () {
            setState(() {
              name = "Hello Nisar";
            });
          },
        ),
      ),
    );
  }
}
