import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/hadeth_model.dart';

class HadethDetailsScreen extends StatelessWidget {
  const HadethDetailsScreen({super.key});
  static const String routeName= "hadethScreen";

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as HadethModel;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/main_bg.png"))
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
    ) ;
  }
}
