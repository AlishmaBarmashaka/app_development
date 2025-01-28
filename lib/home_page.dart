import 'package:flutter/material.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Text("Hello Welcome to mobile development", style: TextStyle(fontSize: 30),),
            Container(
              height: 200,
              width: 200,
              color: const Color.fromARGB(255, 0, 0, 0)            )
          ],
        ),
      ),
    );

  }
}