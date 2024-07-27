import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName ="SuraDetails";
  SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses=[];

  @override
  Widget build(BuildContext context) {
    var model =ModalRoute.of(context)?.settings.arguments as SuraModel;

    if(verses.isEmpty)
      {loadSuraFile(model.index);}

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_bg.png"))

      ),
      child: Scaffold(

        appBar: AppBar(
          title: Text(model.name,style: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.w700),),
         centerTitle: true,
          iconTheme: IconThemeData(
            color: Colors.black
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          margin: const EdgeInsets.all(12.0),
          child: Card(
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(17)
            ),
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return Text(verses[index],textAlign: TextAlign.center,style:
                  GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600,wordSpacing: 4),);
                },itemCount: verses.length,),
          ),
        ),
      ),
    );
  }

  loadSuraFile(int index)async {
    String sura = await rootBundle.loadString("assets/files/${index+1}.txt");
    List<String>suraLines=sura.split("\n");
    verses=suraLines;
    print(suraLines);
    setState(() {});

  }
}
