import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/tabs/ahadeth_tab.dart';
import 'package:islami_app/home/tabs/quran_tab.dart';
import 'package:islami_app/home/tabs/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/settings_tab.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName ="home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);


    return Stack(
      children: [
        Image.asset(
            provider.appTheme==ThemeMode.dark?
                "assets/images/main_dark_bg.png"
                :
            "assets/images/main_bg.png")
        ,Scaffold(

          appBar: AppBar(
          centerTitle: true,
          title: Text("islami".tr() ,),
        ),
          bottomNavigationBar:
          BottomNavigationBar(

            currentIndex: selectedIndex,
            onTap:(index) {
              selectedIndex=index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),label: "moshaf"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "Sepha"),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "Radio" ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "Ahadeth"),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),

          ],),
          body: tabs[selectedIndex],

        ),

      ],
    );
  }
  List<Widget> tabs=[
    QuranTab(),
    SebbhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab(),
  ];

}
