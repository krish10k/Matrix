// import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:responsive_framework/responsive_framework.dart';

class MProfile extends StatelessWidget {
  const MProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.of(context).size.width;
    return
        //  Center(
        //   child:
        Container(
      margin: const EdgeInsets.only(top: 16, right: 8),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, bottom: 0.0, left: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Intro section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 56.0,
                              height: 56.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=150&q=150'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 6.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Rakesh Virendra Singh",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.orange
                                  // fromRGBO(255, 124, 17, 1),
                                  ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              "Director Technology",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 176, 174, 174),

                                  /// WHY  color: Colors.grey[500],  DOSENT WORK HERE???
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.grey[500],
                      size: 25,
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: 24,
              // ),
              Padding(padding: EdgeInsets.only(top: 24)),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 248),
                            border: Border(
                                top: BorderSide(
                              color: Color.fromARGB(255, 235, 233, 233),
                              width: 1,
                            ))),
                        child:
                            // screenW > 900
                            //     ? // for mobile screens --->
                            //     :
                            Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          //runAlignment: WrapAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 235, 233, 233)),
                              )),
                              child: Expanded(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          width: 163.5,
                                          decoration: const BoxDecoration(
                                              border: Border(
                                            right: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    255, 235, 233, 233)),
                                          )),
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Branch",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey[400],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 4.0),
                                                  child:

                                                      /// wrap
                                                      Expanded(
                                                    child: Text(
                                                      "Pune, Maharashtra      mazaaaa ",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.grey[900],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: 163.5,
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text(
                                                  "Department",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey[400],
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 4.0),
                                                  child: Expanded(
                                                    child: Text(
                                                      "Technology , Data science team",
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.grey[900],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 235, 233, 233),
                              ))),
                              child: Row(
                                children: [
                                  Container(
                                      width: 300,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                              "Email",
                                              style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.grey[400],
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 4.0),
                                              child: Expanded(
                                                child: Text(
                                                  "data_abc@mail.com  v ddd    ",
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color: Colors.grey[900],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                    width: 163.5,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Project",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: Expanded(
                                              child: Text(
                                                "Technology",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                                Container(
                                    width: 163.5,
                                    decoration: const BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                width: 1,
                                                color: Color.fromARGB(
                                                    255, 235, 233, 233)))),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "Mobile",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.grey[400],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 4.0),
                                            child: Expanded(
                                              child: Text(
                                                "98573837788",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.grey[900],
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )),
                              ],
                            ),
                          ],
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
        // ),
      ),
    );
  }
}
