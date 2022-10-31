import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';
import 'package:neo/widgets/profile.dart';
import 'package:neo/widgets/course_card.dart';
import 'package:neo/widgets/mprofile.dart';

class MobileHomePage extends StatefulWidget {
  const MobileHomePage({super.key, required this.title});

  final String title;
  @override
  State<MobileHomePage> createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    // print(screenW);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Column(children: [
              const MProfile(),

              Column(
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 6.0),
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
              ),

              // ResponsiveRowColumn(
              //   rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   // rowPadding: const EdgeInsets.all(30),
              //   columnPadding: const EdgeInsets.all(10),
              //   columnCrossAxisAlignment: CrossAxisAlignment.start,
              //   layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              //       ? ResponsiveRowColumnType.COLUMN
              //       : ResponsiveRowColumnType.ROW,
              //   children: [
              //     const ResponsiveRowColumnItem(
              //       rowFlex: 1,
              //       child: Text(
              //         'Course Training Programmes',
              //         style: TextStyle(
              //             fontSize: 14,
              //             height: 2,
              //             fontWeight: FontWeight.w600,
              //             color: Color.fromARGB(255, 33, 33, 33)),
              //       ),
              //     ),
              //     ResponsiveRowColumnItem(
              //       // rowFlex: 1,
              //       child: Card(
              //         elevation: 3,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(4)),
              //         color: Colors.white,
              //         child: Padding(
              //           padding: const EdgeInsets.symmetric(
              //               vertical: 8, horizontal: 10),
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               Padding(
              //                 padding: const EdgeInsets.only(right: 6.0),
              //                 child: Icon(
              //                   Icons.open_in_new,
              //                   color: Colors.grey[500],
              //                   size: 15,
              //                 ),
              //               ),
              //               const Text("Upcoming Trainings"),
              //               Icon(
              //                 Icons.arrow_drop_down_outlined,
              //                 color: Colors.grey[500],
              //                 size: 15,
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: <Widget>[
              //     const Text(
              //       'Course Training Programmes',
              //       style: TextStyle(
              //           fontSize: 14,
              //           height: 2,
              //           fontWeight: FontWeight.w600,
              //           color: Color.fromARGB(255, 33, 33, 33)),
              //     ),
              //     Card(
              //       elevation: 3,
              //       shape: RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(4)),
              //       color: Colors.white,
              //       child: Padding(
              //         padding: const EdgeInsets.symmetric(
              //             vertical: 8, horizontal: 10),
              //         child: Row(
              //           children: [
              //             Padding(
              //               padding: const EdgeInsets.only(right: 6.0),
              //               child: Icon(
              //                 Icons.open_in_new,
              //                 color: Colors.grey[500],
              //                 size: 15,
              //               ),
              //             ),
              //             const Text("Upcoming Trainings"),
              //             Icon(
              //               Icons.arrow_drop_down_outlined,
              //               color: Colors.grey[500],
              //               size: 15,
              //             ),
              //           ],
              //         ),
              //       ),
              //     )
              //   ],
              // ),
              screenW > 900
                  ? SingleChildScrollView(
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
                  : Wrap(
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
            ])
          ],
        ),
      ),
    );
  }
}
