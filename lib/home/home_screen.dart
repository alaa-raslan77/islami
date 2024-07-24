import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/tabs/ahadeth_tab.dart';
import 'package:islami_app/home/tabs/quran_tab.dart';
import 'package:islami_app/home/tabs/radio_tab.dart';
import 'package:islami_app/home/tabs/sebha_tab.dart';
import 'package:islami_app/home/tabs/settings_tab.dart';

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

    return Stack(
      children: [
        Image.asset("assets/images/main_bg.png")
        ,Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text("Islami",style:GoogleFonts.elMessiri(
            fontSize: 30,fontWeight: FontWeight.bold
          ) ,),
        ),
          bottomNavigationBar:
          BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.shifting,
            backgroundColor: Color(0xffB7935F),
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            currentIndex: selectedIndex,
            onTap:(index) {
              selectedIndex=index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/moshaf_blue.png")),label: "Moshaf",backgroundColor: Color(0xffB7935F)),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/sebha.png")),label: "Sepha",backgroundColor: Color(0xffB7935F)),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/radio.png")),label: "Radio",backgroundColor:Color(0xffB7935F) ),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),label: "Ahadeth",backgroundColor: Color(0xffB7935F)),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings",backgroundColor:Color(0xffB7935F)),

          ],),
          body: tabs[selectedIndex],

        ),

      ],
    );
  }
  List<Widget> tabs=[
    QuranTab(),
    AhadethTab(),
    RadioTab(),
    SebbhaTab(),
    SettingsTab(),
  ];

}
