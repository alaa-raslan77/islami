import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:islami_app/providers/sura_details_provider.dart';
import 'package:islami_app/sura_model.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName ="SuraDetails";
  SuraDetailsScreen({super.key});


  @override
  Widget build(BuildContext context) {
    var model =ModalRoute.of(context)?.settings.arguments as SuraModel;
    var provider = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => SuraDetailsProvider(),
      builder: (context, child) {
        var pro  = Provider.of<SuraDetailsProvider>(context);
        if (pro.verses.isEmpty){
          pro.loadSuraFile(model.index);
        }


        return  Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(provider.appTheme==ThemeMode.dark?
              "assets/images/main_dark_bg.png"
                  :
              "assets/images/main_bg.png"))

          ),
          child: Scaffold(

            appBar: AppBar(
              title: Text(model.name,style: GoogleFonts.elMessiri(fontSize: 30,fontWeight: FontWeight.w700),),
              centerTitle: true,

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
                    return Text(pro.verses[index],textAlign: TextAlign.center,style:
                    GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600,wordSpacing: 4),);
                  },itemCount: pro.verses.length,),
              ),
            ),
          ),
        );
      },



    );
  }
}
