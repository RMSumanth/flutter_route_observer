import 'package:flutter/material.dart';
import 'package:navigation_route_observers/first_screen.dart';
import 'package:navigation_route_observers/navigation_route_observers.dart';
import 'package:navigation_route_observers/second_screen.dart';
import 'package:navigation_route_observers/third_screen.dart';

void main() {
  runApp(const MyApp());
}

final NavRouteObservers navRouteObservers = NavRouteObservers();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorObservers: [navRouteObservers],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        'screen-two': (context) => const SecondScreen(),
        'screen-three': (context) => const ThirdScreen(),
      },
      home: const FirstScreen(),
    );
  }
}
