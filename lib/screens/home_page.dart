import 'package:flutter/material.dart';
import 'package:neo/model/course.dart';
import 'package:neo/widgets/profile.dart';
import 'package:neo/widgets/course_card.dart';
import 'package:neo/widgets/mprofile.dart';
import 'package:http/http.dart' as http;
import 'dart:core';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Course> _courses = <Course>[];
  Future fetchCourses() async {
    try {
      var url =
          'https://gist.githubusercontent.com/krish10k/49277be4768df56b8349701027fd1449/raw/b99ecdc6715352a71c40df2fea0b320f6f45f08b/course.json';
      var response = await http.get(Uri.parse(url));
      print("output on console");

      var courses = <Course>[];
      if (response.statusCode == 200) {
        var coursesJson = json.decode(response.body);
        for (var courseJson in coursesJson) {
          courses.add(Course.fromJson(courseJson));
        }
        print(courses[1].startDate);
        return courses;
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    fetchCourses().then((value) {
      setState(() {
        _courses.addAll(value);
      });
    });
    super.initState();
  }

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

                        // dd
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
                        // ConstrainedBox(
                        //   constraints: BoxConstraints(
                        //       maxHeight: 1000), // for list in list
                        //   child:
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) =>
                              CourseCard(_courses[index]),
                          itemCount: _courses?.length ?? 0,
                        ),
                        // ),
                        // CourseCard(),
                        // CourseCard(),
                        // CourseCard(),
                        // CourseCard(),
                        // CourseCard(),
                        // CourseCard(),
                        // CourseCard(),
                        // CourseCard(),
                      ],
                    )
                  : ConstrainedBox(
                      constraints: BoxConstraints(
                          maxHeight: 400), // imp for adding nexted listview
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) =>
                            CourseCard(_courses[index]),
                        itemCount: _courses?.length ?? 0,
                      ),
                    ),

              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: const <Widget>[

              //       CourseCard(),
              //       CourseCard(),
              //       CourseCard(),
              //       CourseCard(),
              //       CourseCard(),
              //       CourseCard(),
              //       CourseCard(),
              //       CourseCard(),

              //     ],
              //   ),
              // )
            ])
          ],
        ),
      ),
    );
  }
}
