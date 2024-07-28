import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../app_colors.dart';
import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    Locale currentLocal =context.locale;

    return Container
      (
      height: MediaQuery.of(context).size.height*.5,

      decoration: BoxDecoration(
          color: Colors.white,
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
                  //provider.changeLanguage(context,"ar");
                  context.setLocale(Locale("ar"));

                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text("arabic".tr(),
                      style: Theme.of(context)?.
                      textTheme.bodyMedium?.
                      copyWith(color: currentLocal==Locale("ar")?
                      AppColors.Primary
                          :
                      Colors.black),),
                    currentLocal==Locale("ar")?
                    Icon(Icons.done, color: AppColors.Primary,size: 35,)
                        :
                    SizedBox()



                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                onTap: () {
                  context.setLocale(Locale("en"));
                  //provider.changeLanguage(context,"en");
                  Navigator.pop(context);

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text("english".tr(),style:
                    Theme.of(context)?.
                    textTheme.bodyMedium?.copyWith(color: currentLocal==Locale("en")?
                        AppColors.Primary
                    :
                        Colors.black
                    )),
                    currentLocal==Locale("en")?
                    Icon(Icons.done, color: AppColors.Primary,size: 35,)
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
