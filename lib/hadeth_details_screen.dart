import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';
import 'package:islami_app/providers/ahadeth_details_provider.dart';
import 'package:islami_app/providers/my_provider.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});
  static const String routeName= "hadethScreen";

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);

    return ChangeNotifierProvider(
      create: (context) => AhadethDetailsProvider(),
      builder: (context, child) {
        var hadethPro  = Provider.of<AhadethDetailsProvider>(context);
        return Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(provider.appTheme==ThemeMode.dark?
              "assets/images/main_dark_bg.png"
                  :
              "assets/images/main_bg.png"))
          ),
          child: Scaffold(

            appBar: AppBar(
              title: Text(model.title),
            ),
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Card(
                child: ListView.builder(itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(model.content[index],
                      textAlign: TextAlign.right,
                      style: GoogleFonts.elMessiri(fontSize: 25,fontWeight: FontWeight.w500),),
                  );
                },itemCount: model.content.length,),
              ),
            ),
          ),
        );

      },

    ) ;
  }
}
