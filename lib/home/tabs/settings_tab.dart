import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/bottom_sheets/language_bottom_sheet.dart';
import 'package:islami_app/bottom_sheets/theme_bottom_sheet.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    Locale currentLocal =context.locale;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text("theme".tr(),style: Theme.of(context)?.textTheme.bodyLarge,),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context,
                isDismissible: false,
                isScrollControlled: true,
                builder: (context) {
                return ThemeBottomSheet();
              },);
            },
            child: Container(
              padding: EdgeInsets.all(7),
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(24),
               border: Border.all(color: Theme.of(context).primaryColor)
              ) ,
                child: Text(pro.appTheme==ThemeMode.dark?"dark".tr():"light".tr(),style: Theme.of(context).textTheme.bodyMedium,)),
          ),
          SizedBox(height: 30,),
          Text("language".tr(),style: Theme.of(context).textTheme.bodyLarge,),
          SizedBox(height: 15,),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(context: context,
                isDismissible: false,
                isScrollControlled: true,
                builder: (context) {
                return LanguageBottomSheet();
              },);
            },

            child: Container(
                padding: EdgeInsets.all(7),
                decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Theme.of(context).primaryColor)
                ) ,
                child: Text(currentLocal==Locale("en")?
                    "english".tr()
                    :
               "arabic".tr(),style: Theme.of(context).textTheme.bodyMedium)),
          )
        ],
      ),
    );
  }
}
