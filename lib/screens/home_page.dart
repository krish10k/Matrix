import 'package:flutter/material.dart';
import 'package:neo/widgets/profile.dart';
import 'package:neo/widgets/course_card.dart';

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
              const Profile(),
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
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 6.0),
                            child: Icon(
                              Icons.open_in_new,
                              color: Colors.grey[500],
                              size: 15,
                            ),
                          ),
                          const Text("Upcoming Trainings"),
                          Icon(
                            Icons.arrow_drop_down_outlined,
                            color: Colors.grey[500],
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
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