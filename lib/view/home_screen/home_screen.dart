import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: SearchBar(
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
          hintText: '北海道, 札幌市',
          hintStyle: MaterialStatePropertyAll(
              TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border_rounded,
                color: Colors.red,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.05,
            width: double.infinity,
            color: Colors.yellow.shade700,
            child: Center(
                child: Text(
              '2022年 5月 26日（木）',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )),
          )
        ],
      ),
    );
  }
}
