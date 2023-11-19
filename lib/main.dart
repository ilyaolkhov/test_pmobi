import 'package:flutter/material.dart';
import 'package:test_pmobi/feature/first_screen/burger_king.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Color.fromARGB(255, 228, 200, 67),
        scaffoldBackgroundColor: Colors.black87,

        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black87,
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
        ),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
            titleLarge: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400),
          titleSmall: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 228, 200, 67),),
        useMaterial3: true,
      ),
      home: BurgerKing(),
    );
  }
}
