import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/sura_details_screen.dart';
import 'package:islami_app/sura_model.dart';

class QuranTab extends StatelessWidget {
  List<String> SuraNames=["الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
  ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
  ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
  ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
  ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
  ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
  ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
  ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
  ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
  "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق","الناس"];
 QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [

        Image.asset("assets/images/home_logo.png",height: 227,)
        ,Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
    Text("sura names",textAlign: TextAlign.center,style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),),
    Divider(
    thickness: 3,
    color: Color(0xffB7935F),
    ),
        Expanded(
          child: ListView.separated(
          separatorBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Icon(Icons.star,color: Color(0xffB7935F),)),
              Expanded(
                flex: 2,
                child: Divider(
                  thickness: 2,
                  color: Color(0xffB7935F),
                
                ),
              ),
              Expanded(child: Icon(Icons.star,color: Color(0xffB7935F),))
            ],
          ),
            itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context, SuraDetailsScreen.routeName,
                    arguments:SuraModel(name: SuraNames[index], index: index) );
              },
              child: Text(SuraNames[index],textAlign: TextAlign.center,
                  style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600)),
            );
          },
            itemCount: SuraNames.length,
          
          ),
        )
      ],
    );
  }
}
