import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

import 'my_app.dart';

void main() async {


  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
    ),
  ],

  child:EasyLocalization(
    supportedLocales: [Locale('en'), Locale('ar')],
  path: 'assets/translation',
  startLocale: Locale("en"),
  saveLocale: true,

  child: MyApp()) ,

     ),
  );
}
