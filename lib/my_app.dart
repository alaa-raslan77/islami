import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_details_screen.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/sura_details_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme:MyThemeData.lightTheme ,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.appTheme,
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
