import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_x/view/const/color.dart';
import 'package:portfolio_x/view/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PortfolioX',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.orange,
        ).copyWith(secondary: Coolors.accentColor),
      ),
      home: const HomePage(),
    );
  }
}
