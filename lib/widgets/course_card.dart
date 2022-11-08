import 'package:flutter/material.dart';
import 'package:neo/model/course.dart';
// import 'package:neo/screens/mobile_home_page.dart';

class CourseCard extends StatelessWidget {
  // const CourseCard({Key? key}) : super(key: key);
  final Course course;

  const CourseCard(this.course);

  @override
  Widget build(BuildContext context) {
    // print("from card");
    // print(this.course.endDate);
    return Container(
      width: 328,
      margin: const EdgeInsets.only(right: 8),
      child: Column(
        children: [
          Card(
            elevation: 3,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 235, 233, 233)))),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  course.courseTitle.toString(),
                                  style: TextStyle(
                                      fontSize: 14,
                                      height: 2,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey[900]),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8.0),
                                  child: Text(
                                    course.creator.toString(),
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )),
                  // Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Icon(
                                Icons.calendar_today,
                                color: Colors.grey[500],
                                size: 12,
                              ),
                            ),
                            Text(
                              "Date",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '${course.startDate?.toString()} ${course.endDate != null ? "," : ""} ${course.endDate?.toString() ?? ""}',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 33, 33, 33),
                          ),
                        ),
                        // Text(
                        //   course?.endDate?.toString() ?? "",
                        //   style: TextStyle(
                        //     fontSize: 12,
                        //     fontWeight: FontWeight.w500,
                        //     color: Color.fromARGB(255, 33, 33, 33),
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Icon(
                                Icons.access_time,
                                color: Colors.grey[500],
                                size: 12,
                              ),
                            ),
                            Text(
                              "Time",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[400],
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          '10:00 AM',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 33, 33, 33),
                          ),
                        )
                      ],
                    ),
                  ),
                  //   ],
                  // ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      foregroundColor: Colors.white,
                      backgroundColor:
                          const Color.fromRGBO(64, 193, 115, 1), // foreground
                    ),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const MobileHomePage()),
                      // );
                    },
                    child: const Text('Take Course'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
