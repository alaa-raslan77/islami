import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../app_colors.dart';
import '../../providers/my_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 160),
          child: Image.asset("assets/images/radio_screen.png",),
        ),
        Padding(
          padding: const EdgeInsets.only(top:50 ,bottom:50 ),
          child: Text("اذاعة القرآن الكريم",style: Theme.of(context).textTheme.bodyLarge,),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.skip_next,
              size: 60,color:     pro.appTheme==ThemeMode.dark?
              AppColors.YellowColor
                  :
              AppColors.Primary,)),

            SizedBox(width: 20,),

            IconButton(onPressed: () {}, icon: Icon(Icons.play_arrow,
              size: 60,
              color:     pro.appTheme==ThemeMode.dark?
              AppColors.YellowColor
                  :
              AppColors.Primary,)),

            SizedBox(width: 20,),

            IconButton(onPressed: () {}, icon: Icon(Icons.skip_previous,size: 60,
              color:     pro.appTheme==ThemeMode.dark?
              AppColors.YellowColor
                  :
              AppColors.Primary,)),
          ],
        )
      ],
    );
  }
}
