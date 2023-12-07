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
          title: Center(
            child: Text(
              "malathamin",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color.fromARGB(222, 0, 0, 0),
        ),
        body: GridView.builder(
          itemBuilder: (context, index) {
            return Card(
              color: Color.fromARGB(222, 0, 0, 0),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      Food.foodlist[index].foodName,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: Image.asset(
                        Food.foodlist[index].foodImage,
                        height: 200,
                        width: 200,
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: Food.foodlist.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
        ));
  }
}
