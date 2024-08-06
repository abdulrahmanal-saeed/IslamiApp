import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/quran/quran_tab.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "/SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat =[];
  late SuraDetailsArgs args;

  @override
  Widget build(BuildContext context) {
    loadSuraFiles();
    args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    return  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/default_bg.png'),
            fit: BoxFit.fill,
          ),
        ),
      child: Scaffold(
        appBar: AppBar(title: Text(args.suraName,)
        ),
        body:
        Container(
          padding: EdgeInsets.all(24),
          margin: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.06 ,
              horizontal: MediaQuery.of(context).size.width * 0.07),
          decoration: BoxDecoration(
            color: AppTheme.white,
            borderRadius: BorderRadius.circular(25)
          ),
          child: ayat.isEmpty ?
          Center(
              child: CircularProgressIndicator
                (color: Theme.of(context).primaryColor,)
          )
          : ListView.builder(itemBuilder: (_, index) => Text(
            ayat[index],
          style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,),
              itemCount: ayat.length,
          ),
        ),
      ),
    );
  }

  Future<void> loadSuraFiles() async{
    String sura =
    await rootBundle.loadString('assets/files/${args.index +1}.txt');
    ayat = sura.split('\r\n');
    setState(() {});

  }
}













