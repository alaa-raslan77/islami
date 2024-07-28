import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Container
      (
      height: MediaQuery.of(context).size.height*.5,

      decoration: BoxDecoration(
        color: provider.appTheme==ThemeMode.dark?
        AppColors.PrimaryDark
            :
        Colors.white,
        borderRadius: BorderRadius.only(
         topRight: Radius.circular(20),
          topLeft: Radius.circular(20)
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  provider.changeTheme(ThemeMode.light);
                  Navigator.pop(context);

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                  children: [
                    Text("light".tr(),style: Theme.of(context)?.
                    textTheme.bodyMedium?.copyWith(color:
                    provider.appTheme==ThemeMode.dark?
                    Colors.white
                        :
                    AppColors.Primary),),
                    provider.appTheme==ThemeMode.dark?
                    SizedBox()
                        :
                    Icon(Icons.done, color:

                    AppColors.Primary,size: 35,),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  provider.changeTheme(ThemeMode.dark);
                  Navigator.pop(context);


                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text("dark".tr(),style: Theme.of(context)?.
                    textTheme.bodyMedium?.copyWith(color:
                    provider.appTheme==ThemeMode.dark?
                    AppColors.YellowColor
                        :
                    AppColors.colorblack),),
                    provider.appTheme==ThemeMode.dark?
                    Icon(Icons.done, color:

                    AppColors.YellowColor,size: 35,)
                        :
                        SizedBox()

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
