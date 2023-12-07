import 'package:flutter/material.dart';

import '../models/food.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "malathamin",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: const Color.fromARGB(222, 0, 0, 0),
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(222, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      Food.foodlist[index].foodName,
                      style: const TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Image.asset(
                        Food.foodlist[index].foodImage,
                        height: 120,
                        width: 120,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: Food.foodlist.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
        ));
  }
}
