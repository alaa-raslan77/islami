
import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:provider/provider.dart';

import '../../providers/my_provider.dart';

class SebbhaTab extends StatefulWidget {
  const SebbhaTab({super.key});

  @override
  State<SebbhaTab> createState() => _SebbhaTabState();
}

class _SebbhaTabState extends State<SebbhaTab> {
  int counter=0;
  List<String>azkar=["سبحان الله",
    "الحمد لله",
    "لا اله الا الله",
    "الله اكبر",
  ];
  int index =0;
  double angle =0;
  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 220),
              child: Image.asset(pro.appTheme==ThemeMode.dark?
              "assets/images/seb7a_head_dark.png"
                  :
                  "assets/images/seb7a_head.png"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: Transform.rotate(
                angle: angle,
                child: GestureDetector(
                  onTap: () {
                    OnTap();


                  },
                    child: Image.asset(pro.appTheme==ThemeMode.dark?
                    "assets/images/seb7a_body_dark.png"
                        :
                    "assets/images/seb7a_body.png")),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 26),
          child: Text("عدد التسبيحات ",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        Padding(
          padding: const EdgeInsets.only(top:26 ),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: pro.appTheme==ThemeMode.dark?
                AppColors.PrimaryDark
        :
                Color(0xffc9b496),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Text("$counter",),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:26 ),
          child: Center(
            child: Container(
              width: 175,
              height: 70,
              //padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color:
                  pro.appTheme==ThemeMode.dark?
                 AppColors.YellowColor
                      :
                  AppColors.Primary,
                  borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 15,left: 27),
                child: Text("${azkar[index]}",
                  style: Theme.of(context).textTheme.bodyMedium?.
                  copyWith(color: Colors.white,),),
              ),
            ),
          ),
        ),
      ],
    );
  }
  OnTap(){

    counter++;
    if(counter==34){
      index++;
      counter=0;
      if(index==azkar.length)
        {
          index=0;
        }
    }
    angle+=360/4;
    setState(() {});

  }
}
