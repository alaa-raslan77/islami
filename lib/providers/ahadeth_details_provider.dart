import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../hadeth_model.dart';

class AhadethDetailsProvider extends ChangeNotifier{
  List<HadethModel>allAhadeth=[];


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
        notifyListeners();

      }
    });
  }


}