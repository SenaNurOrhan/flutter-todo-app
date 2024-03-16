import 'package:example1/constants/color.dart';
import 'package:example1/screen/add_new_task.dart';
import 'package:example1/todoitem.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> todo = ["Study Lessons", "Run 5K", "Go to party"];
  List<String> completed = ["Game meetup", "Take out trash"];
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(backgroundColor),
          body: Column(children: [
            //Header
            Container(
              width: deviceWidth,
              height: deviceHeight / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("lib/assets/images/header.png"),
                fit: BoxFit.cover,
              )),
              child: const Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 50,
                  ),
                  child: Text(
                    "February 7,2024",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40),
                  child: Text("My Todo List",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ]),
            ),
            //Top Column
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: todo.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TodoItem(title: todo[index]);
                    },
                  ),
                ),
              ),
            ),
            //Completed Text
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Complated",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
            ),
            //Bottom Column
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: SingleChildScrollView(
                  child: ListView.builder(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: completed.length,
                    itemBuilder: (BuildContext context, int index) {
                      return TodoItem(title: completed[index]);
                    },
                  ),
                ),
              ),
            ),

            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AddNewTaskScreen(),
                  ));
                },
                child: const Text("Add New Task"))
          ]),
        ),
      ),
    );
  }
}
