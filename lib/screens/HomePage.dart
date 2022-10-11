import 'package:flutter/material.dart';
import 'package:neo/widgets/profile.dart';
import 'package:neo/widgets/courseCard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Column(children: [
              Profile(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Course Training Programmes',
                    style: TextStyle(
                        fontSize: 14,
                        height: 2,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 33, 33, 33)),
                  ),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: Colors.white,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      child: Text("Upcoming Trainings"),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // ListView(
                    //   scrollDirection: Axis.horizontal,
                    //   children: [
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    CourseCard(),
                    //   ],
                    // )
                  ],
                ),
              )
            ])
          ],
        ),
      ),
    );
  }
}
