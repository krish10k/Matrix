import 'package:flutter/material.dart';
import 'package:neo/main.dart';
import 'package:neo/widgets/profile.dart';
import 'package:neo/widgets/course_card.dart';
import 'package:neo/screens/mobile_home_page.dart';
import 'package:neo/widgets/mprofile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    bool mobile = screenW > 900 ? false : true;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Column(children: [
              // profile section
              mobile ? MProfile() : Profile(),

// courses options title and button
              mobile
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: const [
                          Text(
                            'Course Training Programmes',
                            style: TextStyle(
                                fontSize: 14,
                                height: 3,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 33, 33, 33)),
                          ),
                        ]),
// button --
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Card(
                                    elevation: 3,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4)),
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8, horizontal: 80),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 6.0),
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
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    )
                  :
                  // browser
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
                                Text("Upcoming Trainings"),
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

              // courses view
              mobile
                  ? Wrap(
                      children: [
                        CourseCard(),
                        CourseCard(),
                        CourseCard(),
                        CourseCard(),
                        CourseCard(),
                        CourseCard(),
                        CourseCard(),
                        CourseCard(),
                      ],
                    )
                  : SingleChildScrollView(
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
