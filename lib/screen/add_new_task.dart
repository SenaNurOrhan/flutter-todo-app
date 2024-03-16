import 'package:example1/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor(backgroundColor),
        body: Column(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight / 9,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/images/header.png"),
                      fit: BoxFit.cover)),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                      child: Text(
                    "Add New Task",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.center,
                  )),
                ],
              ),
            ),
            const Text("Task Title"),
            const TextField(
              decoration:
                  InputDecoration(filled: true, fillColor: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
