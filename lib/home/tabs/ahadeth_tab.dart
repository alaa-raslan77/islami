
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_details_screen.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:provider/provider.dart';

import '../../providers/ahadeth_details_provider.dart';

class AhadethTab extends StatefulWidget {
   AhadethTab({super.key});

  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {

  @override
  void initState() {}
  @override
  Widget build(BuildContext context) {


    return ChangeNotifierProvider(
      create: (context) => AhadethDetailsProvider(),
      builder: (context, child) {
        var hadethPro  = Provider.of<AhadethDetailsProvider>(context);
        if (hadethPro.allAhadeth.isEmpty){
          hadethPro.loadHadethFile();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/hadith_header.png",height: 219,),
            Divider(
              thickness: 3,
              color: Color(0xffB7935F),
            ),
            Text("ahadeth".tr(),textAlign: TextAlign.center,style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w600),),
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
                            arguments: hadethPro.allAhadeth[index]);
                      },
                      child: Text(hadethPro.allAhadeth[index].title,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodySmall));
                },
                itemCount: hadethPro.allAhadeth.length,),
            )
          ],);


      },

    );
  }


}
