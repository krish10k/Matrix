// import 'dart:ui';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //  Center(
        //   child:
        Container(
      margin: EdgeInsets.only(top: 16, right: 8),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: Colors.white,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, bottom: 0.0, left: 0, right: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
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

              // Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                  )
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  // Wrap(
                  //   children: [
                  // Column(
                  //   children: <Widget>[

                  Container(
                      height: 76,
                      width: 164,
                      decoration: BoxDecoration(
                          border: Border(
                              // right: BorderSide(
                              //     width: 1,
                              //     color: Color.fromARGB(255, 235, 233, 233))
                              )),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Branch",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Text(
                                "Pune,Maharashtra",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),

                  Container(
                      height: 76,
                      width: 164,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 235, 233, 233)))),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Department",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Text(
                                "Technology",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),

                  Container(
                      height: 76,
                      width: 164,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 235, 233, 233)))),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Project",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Text(
                                "Technology",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),

                  Container(
                      height: 76,
                      width: 164,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 235, 233, 233)))),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Email",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Text(
                                "data",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),

                  Container(
                      height: 76,
                      width: 164,
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  width: 1,
                                  color: Color.fromARGB(255, 235, 233, 233)))),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Mobile",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey[400],
                                ),
                              ),
                              Text(
                                "data",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey[900],
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                  //   ],
                  // )
                  //  ],
                  // )
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
