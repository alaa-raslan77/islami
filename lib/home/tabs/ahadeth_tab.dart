import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_details_screen.dart';
import 'package:islami_app/hadeth_model.dart';

class AhadethTab extends StatefulWidget {
   AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel>allAhadeth=[];
  @override
  void initState() {

    super.initState();
    loadHadethFile();

  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
      Image.asset("assets/images/hadith_header.png",height: 219,),
        Divider(
          thickness: 3,
          color: Color(0xffB7935F),
        ),
        Text("Ahadeth",textAlign: TextAlign.center,style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),),
        Divider(
          thickness: 4,

        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder :(context, index) =>Divider(
              thickness: 2,
              indent: 40,
              endIndent: 40,
            ) ,
            itemBuilder: (context, index) {
            return GestureDetector(

                onTap: (){
                  Navigator.pushNamed(context, HadethDetailsScreen.routeName,
                  arguments: allAhadeth[index]);
                },
                child: Text(allAhadeth[index].title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall));
          },
          itemCount: allAhadeth.length,),
        )
    ],);
  }

  loadHadethFile ()
  {
    rootBundle.loadString("assets/files/ahadeth.txt").then((value){
      List<String>ahadeth =value.split("#");
      for(int i=0;i<ahadeth.length;i++)
        {
          String hadeth = ahadeth[i];
          List<String>hadethLines= hadeth.trim().split("\n");
          String title = hadethLines[0];
          hadethLines.removeAt(0);
          List <String>content=hadethLines;
          HadethModel hadethModel=HadethModel(content: content, title: title);
          print(title);
          allAhadeth.add(hadethModel);
          setState(() {});
        }
    });
  }
}
