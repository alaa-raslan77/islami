import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_details_screen.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/sura_details_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:MyThemeData.lightTheme ,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName :(context) => HomeScreen(),
        SuraDetailsScreen.routeName :(context)=> SuraDetailsScreen(),
        HadethDetailsScreen.routeName :(context)=> HadethDetailsScreen(),

      },
    );
  }
}
