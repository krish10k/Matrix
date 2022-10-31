import 'package:flutter/material.dart';
import 'package:neo/screens/home_page.dart';
import 'package:neo/screens/mobile_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // builder: (context, widget) => ResponsiveWrapper.builder(
        //       ClampingScrollWrapper.builder(context, widget!),
        //       breakpoints: const [
        //         ResponsiveBreakpoint.resize(350, name: MOBILE),
        //         ResponsiveBreakpoint.autoScale(600, name: TABLET),
        //         ResponsiveBreakpoint.resize(800, name: DESKTOP),
        //         ResponsiveBreakpoint.autoScale(1700, name: 'XL'),
        //       ],
        //     ),
        title: 'Matrix Home',
        theme: ThemeData(
            primarySwatch: Colors.grey,
            backgroundColor: const Color.fromARGB(216, 227, 209, 209)),
        home: const HomePage(title: 'Matrix Home Mobile')
        // const HomePage(title: 'Matrix Home'),
        );
  }
}
