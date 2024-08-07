import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/hadeth/hadeth.dart';
import 'package:islami_app/tabs/hadeth/hadeth_details_screen.dart';

import '../../app_theme.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadeth =[];

  @override
  Widget build(BuildContext context) {
    if(ahadeth.isEmpty) {
      loadAhadethFile();
    }
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/hadeth_logo.png',
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                Divider(
                  color: AppTheme.lightPrimary,
                  thickness: 3,
                ),
                Text(
                  'الأحاديث',
                  style: Theme.of(context).textTheme.headlineSmall,
                  ),
                Divider(
                  color: AppTheme.lightPrimary,
                  thickness: 3,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: ahadeth.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap:() => Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
                arguments: ahadeth[index]),
                child: Text(ahadeth[index].title,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,),
              ),
              separatorBuilder: (_,__) => SizedBox(height: 12),
            ),
          ),
        ],
      );
    }
  Future<void>loadAhadethFile()async {
    String ahadethFileContent =
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethText = ahadethFileContent.split('#');
    ahadeth = ahadethText.map((hadethText){
      List<String> hedethLines = hadethText.trim().split('\n');
      String title = hedethLines.first;
      hedethLines.removeAt(0);
      List<String> content = hedethLines;
      return Hadeth(title: title, content: content);
    }).toList();
    setState(() {});
  }
}